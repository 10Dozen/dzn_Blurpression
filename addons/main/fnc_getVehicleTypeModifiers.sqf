#include "script_component.hpp"

/*
    Returns vehicle suppression effect modifier based on vehicle type.
    If vehicle is infantry - return 1 (no mod).
    Caches modifier for type.

    Params:
    0: _vehicle (OBJECT) - vehicle to check.

    Return:
    _vehicleModifier (NUMBER) - suppression effect modificator value.
*/

params ["_vehicle"];

// -- No vehicle - return 1
if (isNull _vehicle) exitWith { 1 };

// -- Get from cache or calculate & cache modifier for type
private _vehicleModifier = _self get Q(VehicleTypeCache) getOrDefaultCall [typeOf _vehicle, {
    private _modifier = FX_VEHICLE_MODIFIER;
    {
        if (_vehicle isKindOf _x) then {
            _modifier = _y;
            break;
        };
    } forEach (_self get Q(VehicleTypeModifiers));

    _modifier
}, true];

_vehicleModifier
