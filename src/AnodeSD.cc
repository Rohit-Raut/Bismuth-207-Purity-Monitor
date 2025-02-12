#include "AnodeSD.hh"
#include "G4Step.hh"
#include "G4Track.hh"
#include "G4ParticleDefinition.hh"
#include "G4VTouchable.hh"
#include "G4ThreeVector.hh"
#include "G4SystemOfUnits.hh"
#include "G4UnitsTable.hh"
// #include "G4VProgress.hh"
#include "RunAction.hh"
#include "HistoManager.hh"
#include "G4RunManager.hh"


AnodeSD::AnodeSD(const G4String& name): G4VSensitiveDetector(name)
{}

AnodeSD::~AnodeSD()
{}

G4bool AnodeSD::ProcessHits(G4Step* aStep, G4TouchableHistory*)
{
    const G4Track* track = aStep->GetTrack();
    auto volume = aStep->GetPreStepPoint()->GetTouchableHandle()->GetVolume();
    G4String volumeName = volume->GetName();
    G4String ParticleName = track->GetDefinition()->GetParticleName();
    G4double kineticEnergy = track->GetKineticEnergy();
    if (kineticEnergy<=0.0)
    {
	    return false;
    }
   
    G4ThreeVector position = aStep->GetPreStepPoint()->GetPosition();
    //In future I also need to implement if the track is originated from the bismuth source as well but for now this all is fine
    G4cout<<"Anode SD line 35 Hit in volume: "<<volumeName<< " by "<<ParticleName <<" with KE: "<<kineticEnergy/keV<<G4endl;

    // G4cout<<"[Track Anode R.R ] Anode Plane Particle Detection: "<<ParticleName<<" Energy Deposition: "<<G4BestUnit(kineticEnergy, "Energy")<<"Position"<<G4BestUnit(position, "Length")<<G4endl;
    auto runAction = (const RunAction*)G4RunManager::GetRunManager()->GetRunManager()->GetUserRunAction();
   if (!runAction) return false;
   HistoManager* hManager = runAction->GetHistoManager();
   if(hManager){
	   if (volumeName == "InnerDisk"){
           hManager->FillInnerAnodeNtuple(ParticleName, kineticEnergy, position);
       }
       else if(volumeName == "OuterDisk"){
           hManager->FillOuterAnodeNtuple(ParticleName, kineticEnergy, position);
       }
   }	   
    return true;
}



