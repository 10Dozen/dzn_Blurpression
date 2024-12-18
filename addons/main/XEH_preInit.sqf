#include "script_component.hpp"

[] call COMPILE_FILE(initSettings);

// -- Component initalization
if !(hasInterface) exitWith {};
COB = [] call COMPILE_FILE(Component);
