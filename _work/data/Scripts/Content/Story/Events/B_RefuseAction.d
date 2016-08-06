// --------------------------------------------------------------------------------------------------------
// Mob-Benutzung
// --------------------------------------------------------------------------------------------------------
// Kein Schlüssel oder Dietrich
func void PLAYER_MOB_MISSING_KEY_OR_LOCKPICK()
{
	Print (PRINT_PicklockOrKeyMissing);
	AI_PlayAni	(self,"T_DONTKNOW");
	B_SayOverlay (self, self , "$PicklockOrKeyMissing");
};
// Hat keinen Schlüssel
func void PLAYER_MOB_MISSING_KEY()
{
	Print (PRINT_KeyMissing);
	AI_PlayAni	(self,"T_DONTKNOW");
	B_SayOverlay (self, self , "$KeyMissing");
};
// Hat keinen Dietrich
func void PLAYER_MOB_MISSING_LOCKPICK()
{
	if (Npc_GetTalentSkill (hero,NPC_TALENT_PICKLOCK) == FALSE)
	{
		Print (PRINT_NoPicklockTalent);
		AI_PlayAni	(self,"T_DONTKNOW");
		B_SayOverlay (self, self , "$NoPicklockTalent");
	}
	else
	{
		Print (PRINT_PicklockMissing);
		AI_PlayAni	(self,"T_DONTKNOW");
		B_SayOverlay (self, self , "$PicklockMissing");
	};
};
// Krieg ich niemals auf
func void PLAYER_MOB_NEVER_OPEN()
{
	Print (PRINT_NeverOpen);
	AI_PlayAni	(self,"T_DONTKNOW");
	B_SayOverlay (self, self, "$NeverOpen");
};
// Passendes Interact Item fehlt
func void PLAYER_MOB_MISSING_ITEM()
{
	Print (PRINT_MissingItem);
	AI_PlayAni	(self,"T_DONTKNOW");
	B_SayOverlay (self, self , "$MissingItem");
};
// Wird bereits vom NSC benutzt
func void PLAYER_MOB_ANOTHER_IS_USING()
{
	Print (PRINT_AnotherUser);
	AI_PlayAni	(self,"T_DONTKNOW");
};
// Bin zu weit weg, um den MOB zu benutzen
func void PLAYER_MOB_TOO_FAR_AWAY()
{
	Print (PRINT_Toofar_Away);
	AI_PlayAni	(self,"T_DONTKNOW");
};
// Falsche Seite für Benutzung
func void PLAYER_MOB_WRONG_SIDE()
{
	Print (PRINT_WrongSide);
	AI_PlayAni	(self,"T_DONTKNOW");
};

// --------------------------------------------------------------------------------------------------------
// Trade
// --------------------------------------------------------------------------------------------------------
// Nicht genug Gold um den Gegenstand zu kaufen.
func void PLAYER_TRADE_NOT_ENOUGH_GOLD()
{
	Print (PRINT_Trade_Not_Enough_Gold);
};