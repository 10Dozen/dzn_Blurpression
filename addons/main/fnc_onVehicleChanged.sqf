#include "script_component.hpp"

/*
    Handle vehicle change - removes EH from old vehicle and adds EH for a new one.

    Params:
    0: _unit (OBJECT) - player's unit.
    1: _newVehicle (OBJECT) - new vehicle.
    2: _oldVehicle (OBJECT) - previous vehicle.

    Return: nothing
*/
params ["_unit", "_newVehicle", "_oldVehicle"];

// -- Remove EH from old vehicle
if (!isNull _oldVehicle) then {
    _oldVehicle removeEventHandler [
        "HitPart",
        _oldVehicle getVariable [Q(GVAR(HitEH)), -1]
    ];
    _oldVehicle setVariable [Q(GVAR(HitEH)), nil];
};

// -- Add EH to new one
if (isNull (objectParent _unit)) exitWith {}; // Do not apply EH to players object
private _modifier = _self call [F(getVehicleTypeModifiers), [_newVehicle]];
private _ehId = -1;
if (_modifier != -1) then {
    _ehId = _newVehicle addEventHandler [
        "HitPart",
        {
            (_this # 0) params ["_vehicle"];
            COB call [F(onPlayerSuppressed), [call CBA_fnc_currentUnit, 0]];
        }
    ];
};

_newVehicle setVariable [Q(GVAR(HitEH)), _ehId];
