#ifndef SteppingAction_h
#define SteppingAction_h 1

#include "G4UserSteppingAction.hh"
#include "globals.hh"

class EventAction;
class G4Step;

class SteppingAction: public G4UserSteppingAction
{
public:
    SteppingAction(EventAction* eventAction);
    virtual ~SteppingAction();
    virtual void UserSteppingAction(const G4Step* Step) override;

private:
    EventAction* fEvents;
};

#endif