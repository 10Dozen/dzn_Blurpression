#include "script_component.hpp"

/*
    Initializes COB:
    - Adds "unit" changed EH to apply suppression EH for player's unit;
    - Adds "vehicle" changed EH to apply HitPart EH for player's vehicle;
    - Creates effect for futher use
    Called in PFH.

    Params: none
    Return: nothing
*/
params [];

private _unitEhId = ["unit", {
    COB call [F(onPlayerChanged), _this];
}, true] call CBA_fnc_addPlayerEventHandler;

private _vehicleEhId = ["vehicle", {
    COB call [F(onVehicleChanged), _this];
}, true] call CBA_fnc_addPlayerEventHandler;


private _effect = ppEffectCreate ["RadialBlur", 100];
_effect ppEffectEnable false;
_effect ppEffectForceInNVG true;

private _pfh = [
    { COB call [F(handleEffectState)]; },
    1,
    []
] call CBA_fnc_addPerFrameHandler;

_self set [Q(UnitEH), _unitEhId];
_self set [Q(VehicleEH), _vehicleEhId];
_self set [Q(EffectPFH), _pfh];
_self set [Q(Effect), _effect];
