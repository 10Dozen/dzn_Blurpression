#include "script_component.hpp"

/*
    Component Object (COB)
*/

private _cob = createHashMapObject [[
    ["#str", { "dzn_Blurpression_Component"}],

    [Q(Effect), -1],
    [Q(EffectState), FX_STATE_DISABLED],
    [Q(StrongEffectTTL), -1],
    [Q(EaseEffectTTL), -1],

    [Q(SupressedEH), -1],
    [Q(UnitEH), -1],
    [Q(VehicleEH), -1],
    [Q(EffectPFH), -1],
    [Q(VehicleTypeCache), createHashMap],
    [Q(VehicleTypeModifiers), createHashMapFromArray [
        ["CAManBase", 1],
        ["Boat_F", 1],
        ["StaticWeapon", 1],
        ["Car", 0.35]
    ]],

    PREP_COMPONENT_FUNCTION(init),
    PREP_COMPONENT_FUNCTION(handleEffectState),
    PREP_COMPONENT_FUNCTION(applyEffect),
    PREP_COMPONENT_FUNCTION(easeEffect),
    PREP_COMPONENT_FUNCTION(resetEffect),
    PREP_COMPONENT_FUNCTION(getVehicleTypeModifiers),
    PREP_COMPONENT_FUNCTION(onPlayerSuppressed),
    PREP_COMPONENT_FUNCTION(onPlayerChanged),
    PREP_COMPONENT_FUNCTION(onVehicleChanged)
]];

_cob call [F(init)];

_cob
