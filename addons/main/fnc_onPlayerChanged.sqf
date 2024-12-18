#include "script_component.hpp"

/*
    Handles "unit" changes to new one (e.g. zeus remote control ?)

    Params:
    0: _newPlayer (OBJECT) - new unit.
    1: _oldPlayer (OBJECT) - previous unit.

    Return: nothing
*/

params ["_newPlayer", "_oldPlayer"];

_self call [F(resetEffect)];

if (!isNull _oldPlayer && _self get Q(SupressedEH) > -1) then {
    _oldPlayer removeEventHandler ["Suppressed", _self get Q(SupressedEH)];
};

private _ehId = _newPlayer addEventHandler [
    "Suppressed",
    { COB call [F(onPlayerSuppressed), _this]; }
];
_self set [Q(SupressedEH), _ehId];
