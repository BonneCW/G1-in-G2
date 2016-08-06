/*===================================================================
Npc_GetWalkMode 
Den Walkmode eines NPC zurückgeben.
"RUN" - normales laufen
"WALK" - gehen
"SNEAK" - schleichen
"" - schwimmen, durch Wasser waten
==================================================================*/

const int NPC_INWATER	=	3;

FUNC int Npc_GetWalkMode (VAR C_NPC slf)
{
	const int oCAniCtrl_Human__GetWalkModeString = 6991424; //6AAE40
	var oCNpc oCslf; oCslf = Hlp_GetNpc(slf);
	
	CALL_RetValIszString();
	CALL__thiscall(oCslf.anictrl, oCAniCtrl_Human__GetWalkModeString);
	var string result;
	result = CALL_RetValAszString();
	
	if (Hlp_StrCmp (result, "RUN"))
	{
		return NPC_RUN;
	}
	else if (Hlp_StrCmp (result, "WALK"))
	{
		return NPC_WALK;
	}
	else if (Hlp_StrCmp (result, "SNEAK"))
	{
		return NPC_SNEAK;
	} else if (Hlp_StrCmp (result, ""))
	{
		return NPC_INWATER;
	};
};