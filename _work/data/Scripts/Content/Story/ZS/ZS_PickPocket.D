//////////////////////////////////////////////////////////////////////////
//	ZS_Pickpocket
//	==============
//	Der NSC sucht sich für diesen Tagesablauf-Zustand  einen FP 'STAND'
//	und führt eine große Anzahl an zufälligen Ambient-Aktionen durch:
//	->	Essen
//	->	Trinken
//	->	Rauchen
//	->	Pinkeln gehen
//	->	Gelangweilt-Animationen
//////////////////////////////////////////////////////////////////////////
//	ToDo:
//	-----
//	- Manche Übergänge von T_..._RANDOM_X nach S_..._S0 poppen unschön
////////////////////////////////////////////////////////////////////////////
func void ZS_Pickpocket ()
{
	B_SetPerception			(self);
	if Npc_WasInState(self,ZS_Smalltalk)
	{
		Npc_PercEnable			(self,	PERC_NPCCOMMAND,	B_SmallTalk);
	};    
    
	//-------- Vorbereitungen --------
	B_ClearItem				(self);

	Npc_SetStateTime(self, 0);

	self.aivar[AIV_TAPOSITION] = 0;
};

func int ZS_Pickpocket_Loop ()
{
	if (Npc_GetStateTime(self) == 0)
	{
		AI_PlayAni	(self, "T_STAND_2_LGUARD");
	}
	else
	{
		if (self.aivar[AIV_TAPOSITION] == 1)
		{
			// Hier dann immer checken, ob Held erkannt wird
		};

		if (self.attribute[ATR_HITPOINTS] > 0)
		{
			self.attribute[ATR_HITPOINTS] = 0;

			self.aivar[AIV_TAPOSITION] = 1;
		};
	};

	AI_Wait					(self,	0.2);
	return					LOOP_CONTINUE;
};

func void ZS_Pickpocket_End ()
{
	PrintDebugNpc			(PD_TA_FRAME,	"ZS_Pickpocket_End");
	
	C_StopLookAt			(self);
	B_ClearItem 			(self);
};