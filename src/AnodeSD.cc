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
    G4String ParticleName = track->GetDefinition()->GetParticleName();
    G4double kineticEnergy = track->GetKineticEnergy();
    if (kineticEnergy<=0.0)
    {
	    return false;
    }
    //G4ThreeVector position = aStep->getPreStepPoint()->GetPosition();
   
    G4ThreeVector position = aStep->GetPreStepPoint()->GetPosition();
    //In future I also need to implement if the track is originated from the bismuth source as well but for now this all is fine

    G4cout<<"[Track Anode R.R ] Anode Plane Particle Detection: "<<ParticleName<<" Energy Deposition: "<<G4BestUnit(kineticEnergy, "Energy")<<"Position"<<G4BestUnit(position, "Length")<<G4endl;
    auto runAction = (const RunAction*)G4RunManager::GetRunManager()->GetRunManager()->GetUserRunAction();
   if (!runAction) return false;
   HistoManager* hManager = runAction->GetHistoManager();
   if(hManager){
	   hManager->FillAnodeNtuple(ParticleName, kineticEnergy, position);
   }	   
    return true;
}
