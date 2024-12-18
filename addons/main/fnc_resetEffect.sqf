#include "script_component.hpp"

/*
    Disables current effect and reset related properties.
    Called from handleEffectState.

    Params: none
    Returns: nothing
*/
params [];

(_self get Q(Effect)) ppEffectEnable false;

_self set [Q(EffectState), FX_STATE_DISABLED];
_self set [Q(StrongEffectTTL), -1];
_self set [Q(EaseEffectTTL), -1];
