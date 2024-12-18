#include "script_component.hpp"

/*
    Tracks effect time to live and changes state to next one.

    Params: none
    Returns: nothing
*/
params [];

switch (_self get Q(EffectState)) do {
    case FX_STATE_DISABLED: {};
    case FX_STATE_APPLIED: {
        if (time < (_self get Q(StrongEffectTTL))) exitWith {};

        // Change state and apply easing effect
        _self call [F(easeEffect)];
    };
    case FX_STATE_EASING: {
        if (time < (_self get Q(EaseEffectTTL))) exitWith {};

        // Disable effect
        _self call [F(resetEffect)];
    };
};
