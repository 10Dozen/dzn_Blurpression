#include "script_component.hpp"
/*
    Applies suppression effect and sets effect time to live.
    Called from Suppression EH.

    Params:
    0: _modifier (NUMBER) - optional, effect modifier (multiplier). Defaults to 1.

    Returns: nothing
*/
params [["_modifier", 1]];

// Ignore if already applied
if ((_self get Q(EffectState)) == FX_STATE_APPLIED) exitWith {};

// Otherwise - apply/re-apply effect
_self set [Q(EffectState), FX_STATE_APPLIED];
_self set [Q(EffectModifier), _modifier];
_self set [Q(StrongEffectTTL), time + (2.5 * GVAR(effectDurationSetting) * _modifier + FX_APPLY_COMMIT_TIME)];

private _effect = _self get Q(Effect);
_effect ppEffectEnable true;
_effect ppEffectAdjust [
    FX_POWER_X,
    FX_POWER_Y,
    FX_OFFSET_X / (GVAR(effectPowerSetting) * _modifier),
    FX_OFFSET_Y / (GVAR(effectPowerSetting) * _modifier)
];
_effect ppEffectCommit FX_APPLY_COMMIT_TIME;
