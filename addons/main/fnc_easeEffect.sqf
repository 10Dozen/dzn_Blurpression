#include "script_component.hpp"

/*
    Eases suppression effect and sets TTL for easing.
    Called from handleEffectState

    Params: none
    Returns: nothing
*/

private _duration = GVAR(effectDurationSetting) * (_self get Q(EffectModifier)) * FX_EASE_COMMIT_TIME;

_self set [Q(EffectState), FX_STATE_EASING];
_self set [Q(EaseEffectTTL), time + _duration/2];

private _effect = _self get Q(Effect);
_effect ppEffectAdjust [
    FX_EASE_POWER_X, FX_EASE_POWER_Y,
    FX_EASE_OFFSET_X, FX_EASE_OFFSET_Y
];
_effect ppEffectCommit _duration;
