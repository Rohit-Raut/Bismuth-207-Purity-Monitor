// HistoManager.hh
#ifndef HISTOMANAGER_HH
#define HISTOMANAGER_HH

#include "G4String.hh"
#include "globals.hh"
#include "G4ThreeVector.hh"
class HistoManager {
public:
    HistoManager();
    ~HistoManager();

    void OpenFile(const G4String& filename);
    void Book();
    void Save();
    G4String GetFilename()const{return fFilename;}
    void FillH1(G4int ih, G4double xvalue, G4double weight = 1.0);
    void FillDecayParticlesNtuple(G4double pid, G4double energy);
    void FillEnergyDepositionsNtuple(G4double pid, G4double energy);
    void FillInnerAnodeNtuple(const G4String& particleName, G4double edep, const G4ThreeVector& position);
    void FillOuterAnodeNtuple(const G4String& particleName, G4double edep, const G4ThreeVector& position);
private:
    G4String fFilename;
    G4int fNtupleID_DecayParticles;
    G4int fNtupleID_EnergyDepositions;
    G4int fNtupleID_InnerAnode;
    G4int fNtupleID_OuterAnode;
};

#endif // HISTOMANAGER_HH
