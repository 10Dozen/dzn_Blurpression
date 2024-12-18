#include "script_component.hpp"
// -- Settings
[
    Q(GVAR(enabled)),
    "CHECKBOX",
    [
        LOCALIZE_STRING(Setting_Enabled),
		LOCALIZE_STRING(Setting_Enabled_desc)
    ],
    TITLE,
    true,
    0
] call CBA_fnc_addSetting;

[
    Q(GVAR(enabledInVehicles)),
    "CHECKBOX",
    [
        LOCALIZE_STRING(Setting_EnabledInVehicles),
		LOCALIZE_STRING(Setting_EnabledInVehicles_desc)
    ],
    TITLE,
    true,
    0
] call CBA_fnc_addSetting;

[
    Q(GVAR(maxDistanceSetting)),
    "SLIDER",
    [
        LOCALIZE_STRING(Setting_MaxDistance),
		LOCALIZE_STRING(Setting_MaxDistance_desc)
    ],
    TITLE,
    [1, 15, 5],
    0
] call CBA_fnc_addSetting;

[
    Q(GVAR(effectPowerSetting)),
    "LIST",
    [
        LOCALIZE_STRING(Setting_Power),
		LOCALIZE_STRING(Setting_Power_desc)
    ],
    TITLE,
    [
        [1, 2, 10],
        [
			LOCALIZE_STRING(Setting_PowerLight),
			LOCALIZE_STRING(Setting_PowerNormal),
			LOCALIZE_STRING(Setting_PowerHard)
		],
        1
    ],
    0
] call CBA_fnc_addSetting;

[
    Q(GVAR(effectDurationSetting)),
    "LIST",
    [
        LOCALIZE_STRING(Setting_Duration),
		LOCALIZE_STRING(Setting_Duration_desc)
    ],
    TITLE,
    [
        [0.5, 1, 2],
		[
			LOCALIZE_STRING(Setting_DurationShort),
			LOCALIZE_STRING(Setting_DurationNormal),
			LOCALIZE_STRING(Setting_DurationLong)
		],
        1
    ],
    0
] call CBA_fnc_addSetting;