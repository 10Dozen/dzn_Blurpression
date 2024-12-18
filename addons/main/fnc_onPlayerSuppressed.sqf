#include "script_component.hpp"

/*
    Handles suppression EH - applies effect, if player is in vehicle - use modifier.
    Not applied if:
    - Unit is not local
    - Unit is dead
    - Unit is unconcious (ACE)
    - Some featured camera is used (Zeus, Arsenal, Spectator, etc.)
    - Distance to projectile > threshold

    Params:
    0: _unit (OBJECT) - player unit.
    1: _distance (NUMBER) - distance to projectile.

    Return: nothing
*/

params ["_unit", "_distance"];

if (!GVAR(enabled)) exitWith {};

// In Zeus/Spectator or other special camera modes ["curator","nexus","arsenal","establishing","splendid","animViewer","classic"]
if ((call CBA_fnc_getActiveFeatureCamera) != "") exitWith {};

// Exit on condition
if (!local _unit ||
    !alive _unit ||
    _unit getVariable ["ACE_isUnconscious", false]
) exitWith {};

// Exit on out of range
if (_distance > GVAR(maxDistanceSetting)) exitWith {};

private _vehicle = objectParent _unit;
if (!GVAR(enabledInVehicles) && !isNull _vehicle) exitWith {};

private _modifier = _self call [F(getVehicleTypeModifiers), [_vehicle]];

_self call [F(applyEffect), [_modifier]];
