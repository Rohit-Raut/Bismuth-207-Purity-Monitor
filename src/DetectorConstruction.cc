#include "DetectorConstruction.hh"

#include <G4SystemOfUnits.hh>
#include <G4PhysicalConstants.hh>
#include <G4NistManager.hh>
#include <G4Box.hh>
#include <G4Tubs.hh>
#include <G4LogicalVolume.hh>
#include <G4PVPlacement.hh>
#include <G4RotationMatrix.hh>
#include <G4ThreeVector.hh>
#include <G4Material.hh>
#include <G4VisAttributes.hh>
#include <G4Colour.hh>
#include <G4Isotope.hh>
#include <G4Element.hh>
#include <G4Material.hh>
#include "G4UserLimits.hh"


#include <AnodeSD.hh>
#include <G4UniformElectricField.hh>
#include <G4FieldManager.hh>
#include <G4ChordFinder.hh>
#include <G4MagIntegratorDriver.hh>
#include <G4EqMagElectricField.hh>
#include <G4ClassicalRK4.hh>
#include <G4SDManager.hh>


DetectorConstruction::DetectorConstruction()
: G4VUserDetectorConstruction(),
    fInnerRadius(1.50 * cm),
    fOuterRadius(3.0 * cm),
    fDriftLength(6.5 * cm),
    fLogicActive(nullptr),
    fFieldMgr(nullptr),
    fChordFinder(nullptr)
{}

DetectorConstruction::~DetectorConstruction(){}

G4VPhysicalVolume* DetectorConstruction::Construct()
{
    G4cout << "DEBUG: Entering DetectorConstruction::Construct()" << G4endl;
    // Get nist material manager
    G4NistManager* nist = G4NistManager::Instance();
    G4Material* matLar = nist->FindOrBuildMaterial("G4_lAr");
    G4Material* matAnode= nist->FindOrBuildMaterial("G4_Al");

    //THis is specifically just for Bismtuh source
    G4int ncomponents, natoms;
    G4double abundance;
    G4Isotope* Bi207Element = new G4Isotope("Bi207", 83, 207, 206.9786 * g/mole);
    G4Element* BiElement = new G4Element("Bismuth", "Bi", 1);
    BiElement->AddIsotope(Bi207Element, 100.*perCent);



    G4Material* matBi207 = new G4Material("Bismuth", 9.806 * g/cm3, 1);
    matBi207->AddElement(BiElement, 1);

    //the dimensions of the volume should be cylindrical
    G4double worldRadius = 4.0 * cm;
    G4double worldLength = 20.0 * cm;
    G4Tubs* solidWorld = new G4Tubs("World", 0., worldRadius, 0.5* worldLength, 0., 360. * deg);
    G4LogicalVolume* logicWorld = new G4LogicalVolume(solidWorld, matLar, "World");
    G4VPhysicalVolume* physWorld = new G4PVPlacement(nullptr, G4ThreeVector(), logicWorld, "World", nullptr, false, 0);
     //this is for ActiveLAr
    G4Tubs* solidActive = new G4Tubs("ActiveLar",0.0, fOuterRadius, 0.499*fDriftLength, 0. , 360. * deg);
    fLogicActive = new G4LogicalVolume(solidActive, matLar, "ActiveLar");
    new G4PVPlacement(nullptr, G4ThreeVector(), fLogicActive, "ActiveLar", logicWorld, false, 0);


    //Here lets create a anode region
    G4double anodeThickness = 0.1 * mm;
    G4double zPosAnode = 0.5*fDriftLength;

    //InnerDisk anode
    G4Tubs* solidInnerDisk = new G4Tubs("InnerDisk", 0., fInnerRadius, 0.5 * anodeThickness, 0., 360. * deg);
    G4LogicalVolume* logicInnerDisk = new G4LogicalVolume(solidInnerDisk, matAnode, "InnerDisk");
    new G4PVPlacement(nullptr, G4ThreeVector(0., 0., zPosAnode), logicInnerDisk, "InnerDisk", logicWorld, false, 0);
    fLogicInnerDisk = logicInnerDisk;
    //OuterDisk anode
    G4Tubs* solidOuterDisk = new G4Tubs("OuterDisk", fInnerRadius, fOuterRadius, 0.5 * anodeThickness, 0., 360. * deg);
    G4LogicalVolume* logicOuterDisk = new G4LogicalVolume(solidOuterDisk, matAnode, "OuterDisk");
    new G4PVPlacement(nullptr, G4ThreeVector(0., 0., zPosAnode), logicOuterDisk, "OuterDisk", logicWorld, false, 0);
    fLogicOuterDisk = logicOuterDisk;

    //cathode place to encapsulate the Bismuth with solid titanium
    G4Material* matTi = nist->FindOrBuildMaterial("G4_Ti");
    G4double cathodeRadius = 3.0 * cm;
    G4double cathodeThickness = 0.01 * mm;
    G4double zPosCathode = -0.5*fDriftLength + 0.5 * cathodeThickness;
    G4Tubs* solidCathode = new G4Tubs("Cathode", 0., cathodeRadius, 0.5 * cathodeThickness, 0., 360. * deg);
    G4LogicalVolume* logicCathode = new G4LogicalVolume(solidCathode, matTi, "Cathode");
    new G4PVPlacement(nullptr, G4ThreeVector(0., 0., zPosCathode), logicCathode, "Cathode", logicWorld, false, 0, true);

    //source parameters
    G4double biDiameter = 5.0 * mm;
    G4double biRadius = biDiameter * 0.5;
    G4double biThickness = 0.01 * mm;
    G4ThreeVector biPosition(0.0,0.0,0.0);
    
    //Bismuth encapsulated in Titanium foil
    G4Tubs* solidTiFoil = new G4Tubs("TiFoil", 0., biRadius+biThickness, 0.5 * biThickness, 0., 360. * deg);
    G4LogicalVolume* logicTiFoil = new G4LogicalVolume(solidTiFoil, matTi, "TiFoil");
    new G4PVPlacement(nullptr, biPosition, logicTiFoil, "TiFoil", logicCathode, false, 0, true);

    //Bismuth source
    G4Tubs* solidBi207 = new G4Tubs("Bi207Source", 0., biRadius, 0.5 * biThickness, 0., 360. * deg);
    G4LogicalVolume* logicBi207 = new G4LogicalVolume(solidBi207, matBi207, "Bi207Source");
    G4PVPlacement* physBi207 = new G4PVPlacement(nullptr, G4ThreeVector(0.0,0.0,0.0), logicBi207, "Bi207Source", logicTiFoil, false, 0, true);
    //testing with decay, increasing decay limit to force bismuth to decay within 1ns
    // G4UserLimits* decayLimits = new G4UserLimits();
    // decayLimits -> SetMaxAllowedTime(1.0*ns);
    // logicBi207 = SetUserLimits(decayLimits);
    G4cout << "Bi207 World Position: " << physBi207->GetTranslation() << G4endl;
    G4cout<<"Debugging117 Cathode Position: "<<zPosCathode<< " Anode Position: "<<zPosAnode<<" Bi207 position: "<<biPosition<<G4endl;


    logicWorld->SetVisAttributes(G4VisAttributes::GetInvisible());
    G4VisAttributes* visAttrActive = new G4VisAttributes(G4Colour(0.0, 0.8,1.0, 0.3));
    fLogicActive->SetVisAttributes(visAttrActive);

    G4VisAttributes* innerDiskVis = new G4VisAttributes(G4Colour(0.0, 0.0,1.0, 0.6));
    logicInnerDisk->SetVisAttributes(innerDiskVis);

    G4VisAttributes* outerDiskVis = new G4VisAttributes(G4Colour(1.0, 0.5,0.0, 0.6));
    logicOuterDisk->SetVisAttributes(outerDiskVis);

    G4VisAttributes* viscathode = new G4VisAttributes(G4Colour(0.6, 0.6,0.6, 0.2));
    logicCathode->SetVisAttributes(viscathode);

    G4VisAttributes* visAttrFoil = new G4VisAttributes(G4Colour(0.19, 0.19, 0.19,0.01)); 
    logicTiFoil->SetVisAttributes(visAttrFoil);

    G4VisAttributes* visAttrBi207 = new G4VisAttributes(G4Colour(0.25, 0., 0.,1.0)); 
    logicBi207->SetVisAttributes(visAttrBi207);
    G4cout << "DEBUG: Done with DetectorConstruction::Construct()" << G4endl;
    return physWorld;

}


void DetectorConstruction::ConstructSDandField()
{
    static bool fieldIsInitialized = false;
    if(fieldIsInitialized)
    {
        return;
    }
    fieldIsInitialized = true;
    //this was created to generate the uniform electric field given by fieldValue
    G4ThreeVector fieldValue(0.,0.,5.0*volt/cm);
    auto uniformEField = new G4UniformElectricField(fieldValue);
    auto equation = new G4EqMagElectricField(uniformEField);
    G4int nvar = 8;
    auto stepper = new G4ClassicalRK4(equation, nvar);

    auto pIntegrationDriver = new G4MagInt_Driver(1.0e-2 * mm, stepper, stepper->GetNumberOfVariables());
    fChordFinder = new G4ChordFinder(pIntegrationDriver);

    fFieldMgr = new G4FieldManager();
    fFieldMgr->SetDetectorField(uniformEField);
    fFieldMgr->SetChordFinder(fChordFinder);

    if (fLogicActive)
    {
        fLogicActive->SetFieldManager(fFieldMgr, true);
    }
    else{
        G4ExceptionDescription msg;
    }
    G4SDManager* sdManager = G4SDManager::GetSDMpointer();
    AnodeSD* anodeSD = new AnodeSD("AnodeSD");
    sdManager->AddNewDetector(anodeSD);

    fLogicInnerDisk->SetSensitiveDetector(anodeSD);
    fLogicOuterDisk->SetSensitiveDetector(anodeSD);



}
