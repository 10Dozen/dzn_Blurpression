#include "\z\dzn_Blurpression\addons\main\script_mod.hpp"
#include "\z\dzn_Blurpression\addons\main\script_macros.hpp"
#include "\z\dzn_Blurpression\addons\main\script_cob.hpp"

// Effect modifier
#define FX_VEHICLE_MODIFIER 0.3

// Effect state machine
#define FX_STATE_DISABLED 0
#define FX_STATE_APPLIED 1
#define FX_STATE_EASING 2

// Effect basic values
#define FX_POWER_X 0.035
#define FX_POWER_Y 0.035
#define FX_OFFSET_X 0.15
#define FX_OFFSET_Y 0.15

// 0.01

#define FX_EASE_POWER_X 0
#define FX_EASE_POWER_Y 0
#define FX_EASE_OFFSET_X 1
#define FX_EASE_OFFSET_Y 1

#define FX_APPLY_COMMIT_TIME 0.2
#define FX_EASE_COMMIT_TIME 30
