#include "HistoManager.hh"
#include "G4SystemOfUnits.hh"
#include "G4GenericAnalysisManager.hh"
#include "G4UnitsTable.hh"
#include "G4ios.hh"

HistoManager::HistoManager()
 : fFilename("decay_chain.root"),
   // Initialize IDs to -1 or some invalid sentinel
   fNtupleID_DecayParticles(-1),
   fNtupleID_EnergyDepositions(-1),
   fNtupleID_InnerAnode(-1),
   fNtupleID_OuterAnode(-1)
{
    // Don't open or book anything here.
}

HistoManager::~HistoManager()
{
    // Also do NOT close the file here:
    // Let RunAction do it exactly once per run.
}

void HistoManager::OpenFile(const G4String& filename)
{
    G4cout << "Opening ROOT file: " << filename << G4endl;
    auto analysisManager = G4GenericAnalysisManager::Instance();
    analysisManager->SetVerboseLevel(1);
    analysisManager->SetActivation(true);

    // Set the filename and open
    analysisManager->SetFileName(filename);
    G4int status = analysisManager->OpenFile(filename);
    if ( status != 0 ) {
        G4cerr << "[ERROR] Could not open ROOT file: " << filename << G4endl;
    } else {
        G4cout << "ROOT File opened successfully: " << filename << G4endl;
    }
}

void HistoManager::Book()
{
    auto analysisManager = G4GenericAnalysisManager::Instance();

    G4int nbins = 40;
    G4double vmin = 0.;
    G4double vmax = 1500.;
    analysisManager->CreateH1("H1", "Energy deposit (keV)", nbins, vmin, vmax);

    fNtupleID_DecayParticles = analysisManager->CreateNtuple("DecayParticles", "Emitted Particles");
    analysisManager->CreateNtupleDColumn("PID");
    analysisManager->CreateNtupleDColumn("Energy");
    analysisManager->CreateNtupleDColumn("Weight"); // optional
    analysisManager->FinishNtuple();

    fNtupleID_EnergyDepositions = analysisManager->CreateNtuple("EnergyDepositions", "Energy depositions");
    analysisManager->CreateNtupleDColumn("PID");
    analysisManager->CreateNtupleDColumn("Energy");
    analysisManager->FinishNtuple();


    fNtupleID_InnerAnode = analysisManager->CreateNtuple("InnerAnode", "Data from InnerAnode Hits");
    analysisManager->CreateNtupleSColumn("Particle Name");
    analysisManager->CreateNtupleDColumn("Edep");
    analysisManager->CreateNtupleDColumn("xpos");
    analysisManager->CreateNtupleDColumn("ypos");
    analysisManager->CreateNtupleDColumn("zpos");
    analysisManager->FinishNtuple();


    fNtupleID_OuterAnode = analysisManager->CreateNtuple("OuterAnode", "Data from OuterAnode Hits");
    analysisManager->CreateNtupleSColumn("Particle Name");
    analysisManager->CreateNtupleDColumn("Edep");
    analysisManager->CreateNtupleDColumn("xpos");
    analysisManager->CreateNtupleDColumn("ypos");
    analysisManager->CreateNtupleDColumn("zpos");
    analysisManager->FinishNtuple();

    G4cout << "Book() completed: histograms and ntuples created.\n"
           << "  DecayParticles NtupleID=" << fNtupleID_DecayParticles
           << "  EnergyDepositions NtupleID=" << fNtupleID_EnergyDepositions
           << G4endl;
}

void HistoManager::Save()
{
    auto analysisManager = G4GenericAnalysisManager::Instance();
    analysisManager->Write();
    analysisManager->CloseFile();
    G4cout << "ROOT file written and closed.\n";
}

void HistoManager::FillH1(G4int ih, G4double xvalue, G4double weight)
{
    auto analysisManager = G4GenericAnalysisManager::Instance();
    analysisManager->FillH1(ih, xvalue, weight);
}

void HistoManager::FillDecayParticlesNtuple(G4double pid, G4double energy)
{
    auto analysisManager = G4GenericAnalysisManager::Instance();
    analysisManager->FillNtupleDColumn(fNtupleID_DecayParticles, 0, pid);
    analysisManager->FillNtupleDColumn(fNtupleID_DecayParticles, 1, energy / CLHEP::keV);
    analysisManager->FillNtupleDColumn(fNtupleID_DecayParticles, 2, 1.0); // Weight

    // Add the row
    analysisManager->AddNtupleRow(fNtupleID_DecayParticles);
}

void HistoManager::FillEnergyDepositionsNtuple(G4double pid, G4double energy)
{
    auto analysisManager = G4GenericAnalysisManager::Instance();
    analysisManager->FillNtupleDColumn(fNtupleID_EnergyDepositions, 0, pid);
    analysisManager->FillNtupleDColumn(fNtupleID_EnergyDepositions, 1, energy / CLHEP::keV);
    analysisManager->AddNtupleRow(fNtupleID_EnergyDepositions);
}

void HistoManager::FillInnerAnodeNtuple(const G4String& particleName, G4double edep, const G4ThreeVector& position)
{
	auto analysisManager = G4GenericAnalysisManager::Instance();
	analysisManager->FillNtupleSColumn(fNtupleID_InnerAnode, 0, particleName);
	analysisManager->FillNtupleDColumn(fNtupleID_InnerAnode, 1, edep / CLHEP::keV );
	analysisManager->FillNtupleDColumn(fNtupleID_InnerAnode, 2, position.x() / CLHEP::mm);
	analysisManager->FillNtupleDColumn(fNtupleID_InnerAnode, 3, position.y() / CLHEP::mm);
	analysisManager->FillNtupleDColumn(fNtupleID_InnerAnode, 4, position.z() / CLHEP::mm);
	analysisManager->AddNtupleRow(fNtupleID_InnerAnode);
}

void HistoManager::FillOuterAnodeNtuple(const G4String& particleName, G4double edep, const G4ThreeVector& position)
{
	auto analysisManager = G4GenericAnalysisManager::Instance();
	analysisManager->FillNtupleSColumn(fNtupleID_OuterAnode, 0, particleName);
	analysisManager->FillNtupleDColumn(fNtupleID_OuterAnode, 1, edep / CLHEP::keV);
	analysisManager->FillNtupleDColumn(fNtupleID_OuterAnode, 2, position.x() / CLHEP::mm);
	analysisManager->FillNtupleDColumn(fNtupleID_OuterAnode, 3, position.y() / CLHEP::mm);
	analysisManager->FillNtupleDColumn(fNtupleID_OuterAnode, 4, position.z() / CLHEP::mm);
	analysisManager->AddNtupleRow(fNtupleID_OuterAnode);
}