#define TITLE "dzn Blurpression"
#define TITLE_PREFIX dzn Blurpression
#define ADDON_TITLE TITLE_PREFIX - gADDON

#define Q(s) #s

#define gADDON main
#define gADDON_NAME PREFIX##_##gADDON

#define gADDON_PATH \MAINPREFIX\PREFIX\addons\gADDON
#define gFNC_PATH gADDON_PATH##\functions\##
#define gADDON_FILE(FILENAME) gADDON_PATH##\##FILENAME

#define GVAR(X) gADDON_NAME##_##X
#define QGVAR(X) Q(GVAR(X))

#define COMPILE_FILE(FILE) compileScript ['gADDON_PATH\##FILE.sqf']

#define LOCALIZE_FQKEY(NAME) STR_Blurpression_##NAME
#define LOCALIZE_STRING(NAME) localize Q(LOCALIZE_FQKEY(NAME))

/*
#define ADDON QUOTE(gADDON)
#define ADDON_NAME QUOTE(gADDON_NAME)
#define PATH QUOTE(gADDON_PATH)
#define FNC_PATH QUOTE(gFNC_PATH)

#define GVAR(X) gADDON_NAME##_##X
#define SVAR(X) QUOTE(GVAR(X))
#define FORMAT_VAR(X) format ["%1_%2", ADDON_NAME, X]
#define FUNC(X) gADDON_NAME##_fnc_##X
#define QFUNC(X) QUOTE(FUNC(X))

#define gSTR_NAME(X) STR_##gADDON##_##X
#define STR_NAME(X) QUOTE(gSTR_NAME(X))

#define LOCALIZE_FORMAT_STR(X) localize format ["STR_%1_%2", ADDON, X]
#define LOCALIZE_FORMAT_STR_desc(X) localize format ["STR_%1_%2_desc", ADDON, X]


#define COMPILE_FUNCTION(SUBPATH,NAME) GVAR(NAME) = compile preprocessFileLineNumbers format ["%1%2\%3.sqf", FNC_PATH, QUOTE(SUBPATH), QUOTE(NAME)]

// --- Colors for templating
#define COLOR_GRAY QUOTE(#AAAAAA)

#define COLOR_HINT_TITLE QUOTE(#FFD000)
#define COLOR_HEADER QUOTE(#12C4FF)
#define COLOR_BTN QUOTE(#A0DB65)
#define COLOR_BTN_ALERT QUOTE(#AB483E)
#define COLOR_NOTE QUOTE(#888888)
*/