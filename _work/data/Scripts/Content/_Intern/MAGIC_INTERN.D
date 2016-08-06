
// **************************************************
// Zaubersprüche
// Hier stehen die Deklarationen/Definitionen der 
// logischen Sprüche
// Autor: Carsten Edenfeld
// **************************************************

CONST INT TARGET_COLLECT_NONE 					= 0;				// target will be set by effect (range, azi, elev)
CONST INT TARGET_COLLECT_CASTER					= 1;				// target is the caster
CONST INT TARGET_COLLECT_FOCUS 					= 2;				// target is the focus vob
CONST INT TARGET_COLLECT_ALL 					= 3;				// all targets in range will be assembled
CONST INT TARGET_COLLECT_FOCUS_FALLBACK_NONE	= 4;				// target is the focus vob, if the focus vob is not valid, the trajectory will be set by the effect
CONST INT TARGET_COLLECT_FOCUS_FALLBACK_CASTER	= 5;				// target is the focus vob, if the focus vob is not valid, the target is the caster
CONST INT TARGET_COLLECT_ALL_FALLBACK_NONE		= 6;				// all targets in range will be assembled, if there are no valid targets, the trajectory will be set by the effect
CONST INT TARGET_COLLECT_ALL_FALLBACK_CASTER	= 7;				// all targets in range will be assembled, if there are no valid targets, the target is the caster

CONST INT TARGET_TYPE_ALL						= 1;
CONST INT TARGET_TYPE_ITEMS						= 2;
CONST INT TARGET_TYPE_NPCS						= 4;
CONST INT TARGET_TYPE_ORCS						= 8;
CONST INT TARGET_TYPE_HUMANS					= 16;
CONST INT TARGET_TYPE_UNDEAD					= 32;

var int PLAYER_TALENT_RUNES[MAX_SPELL];				//Die SPL_ Konstanten werden hierfür als Kennung verwendet

