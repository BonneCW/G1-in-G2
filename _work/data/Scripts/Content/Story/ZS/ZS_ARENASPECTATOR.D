//*******************************************************************
//	SONSTIGES
//*******************************************************************


//*******************************************************************
//	wird durch den Tod des Monsters aufgerufen
//*******************************************************************

func void Arena_AssessDefeat () // gibt leider viel weniger passende als bei DeadHero
{
	var int spectjubel_end;
	spectjubel_end = Hlp_Random (45);
	if 	(spectjubel_end < 5)
	{
		B_SayOverlay (self, NULL, "$HEDESERVEDIT");
	}
	else if (spectjubel_end < 10)
	{
		B_SayOverlay (self, NULL, "$ITWASAGOODFIGHT");
	}
	else if (spectjubel_end < 15)
	{
		B_SayOverlay (self, NULL, "$YeahWellDone");
	}
	else if (spectjubel_end < 20)
	{
		B_SayOverlay (self, NULL, "$SuckerGotSome");
	};
}; 

//*******************************************************************
//	wird durch den Tod des HEROS aufgerufen
//*******************************************************************

func void Arena_DeadHero ()
{
	var int spectooh;
	spectooh = Hlp_Random (120);
	if 	(spectooh < 5)
	{
		B_SayOverlay (self, NULL, "$OOH");
		AI_PlayAni (self, "T_WATCHFIGHT_OHNO");
	}
	else if (spectooh < 10)
	{
		B_SayOverlay (self, NULL, "$WhatAreYouDoing");
		AI_PlayAni (self, "T_WATCHFIGHT_OHNO");
	}
	else if (spectooh < 15)
	{
		B_SayOverlay (self, NULL, "$DieMonster");
		AI_PlayAni (self, "T_WATCHFIGHT_OHNO");
	}
	else if (spectooh < 20)
	{
		B_SayOverlay (self, NULL, "$ShitWhatAMonster");
		AI_PlayAni (self, "T_WATCHFIGHT_OHNO");
	}
	else if (spectooh < 25)
	{
		B_SayOverlay (self, NULL, "$HeKilledHim");
		AI_PlayAni (self, "T_WATCHFIGHT_OHNO");
	}
	else if (spectooh < 30)
	{
		B_SayOverlay (self, NULL, "$ItWasAGoodFight");
		AI_PlayAni (self, "T_WATCHFIGHT_OHNO");
	}
	else if (spectooh < 35)
	{
		B_SayOverlay (self, NULL, "$WhatsThat");
		AI_PlayAni (self, "T_WATCHFIGHT_OHNO");
	}
	else if (spectooh < 40)
	{
		B_SayOverlay (self, NULL, "$TheyKilledMyFriend");
		AI_PlayAni (self, "T_WATCHFIGHT_OHNO");
	}
	else if (spectooh < 45)
	{
		B_SayOverlay (self, NULL, "$YoullBeSorryForThis");
		AI_PlayAni (self, "T_WATCHFIGHT_OHNO");
	};
};

//*******************************************************************
//	wird bei jedem LOOP aufgerufen
//*******************************************************************

func void Arena_CheerFight ()
{
	if (Npc_GetStateTime (self) > 2) //sonst zu viele B_Says
	{
		//Npc_SetStateTime (self,0);

		var int spectjubel2;
		spectjubel2 = Hlp_Random (55);
		if 	(spectjubel2 < 5)
		{
			B_SayOverlay (self, NULL, "$OOH");
			AI_PlayAni (self, "T_WATCHFIGHT_OHNO");
		}
		else if (spectjubel2 < 10)
		{
			B_SayOverlay (self, NULL, "$CHEERFIGHT");
			AI_PlayAni (self, "T_WATCHFIGHT_YEAH");
		}
		else if (spectjubel2 < 15)
		{
			B_SayOverlay (self, NULL, "$CHEERFRIEND");
			AI_PlayAni (self, "T_WATCHFIGHT_YEAH");
		}
		else if (spectjubel2 < 20)
		{
			B_SayOverlay (self, NULL, "$HEYHEYHEY");
			AI_PlayAni (self, "T_WATCHFIGHT_YEAH");
		};
	};
};

//*******************************************************************
//	hier jetzt der Zustand, einiges kopiert von ZS_WatchFight
//*******************************************************************

func void ZS_ArenaSpectator()
{
	// dumpfe Bohnen, kriegen nix mit, brauchen sie auch nicht
	Npc_PercEnable (self,	PERC_ASSESSDAMAGE	,	ZS_ReactToDamage	);
	Npc_PercEnable (self,	PERC_ASSESSMAGIC	,	B_AssessMagic		);
	//Npc_PercEnable (self,	PERC_ASSESSSURPRISE	,	ZS_AssessSurprise	);
	//Npc_PercEnable (self,	PERC_ASSESSENEMY	,	B_AssessEnemy		);
	//Npc_PercEnable (self,	PERC_ASSESSMURDER	,	ZS_AssessMurder		);
	//Npc_PercEnable (self,	PERC_ASSESSDEFEAT,	Arena_AssessDefeat		);
	//Npc_PercEnable (self,	PERC_ASSESSDEFEAT	,	ZS_AssessDefeat		);
	//Npc_PercEnable (self,	PERC_CATCHTHIEF		,	ZS_CatchThief 		);
	Npc_PercEnable (self,	PERC_ASSESSTALK		,	B_RefuseTalk 		);
	//Npc_PercEnable (self,	PERC_ASSESSFIGHTSOUND,	Arena_CheerFight		);

	AI_GotoWP(self, self.wp);
	AI_GotoFP(self,"STAND");
	AI_AlignToFP( self );	//Richte Dich aus

	/*if (Kampfbeginn == 1)
	{
		AI_PlayAni(self, "T_STAND_2_WATCHFIGHT");
	};*/
};

func int ZS_ArenaSpectator_loop()
{
	/*if (Kampf_running == TRUE) // sonst jubeln sie IMMER
	{
		//-------- Random Anim --------
		var int spectanim;
		spectanim = Hlp_Random (100);
		if 		(spectanim < 5)	{	AI_TurnToNpc(self, hero);		AI_PlayAni	(self, "T_WATCHFIGHTRANDOM1");	}
		else if	(spectanim < 10)	{	AI_TurnToNpc(self, hero);		AI_PlayAni	(self, "T_WATCHFIGHTRANDOM2");	}
		else if	(spectanim < 15)	{	AI_TurnToNpc(self, hero);		AI_PlayAni	(self, "T_WATCHFIGHTRANDOM3");	}
		else if	(spectanim < 20)	{	AI_TurnToNpc(self, hero);		AI_PlayAni	(self, "T_WATCHFIGHTRANDOM4");	}
		else {AI_TurnToNpc (self, hero); }; // immer zum Geschehen gucken

		Arena_CheerFight(); // YEAH! SUPER! SCHLAG DOCH ZURÜCK! DAS HAT WEHGETAN!

		if C_NpcIsDown(hero)
		{
			AI_Wait (self, 1);
			Arena_DeadHero(); // damit ein Spruch abgegeben wird
			return LOOP_END;
		};

		if ( (ArenaMonsterAnzahl == 1) && (Npc_IsDead(ArenaMonsterNPC1)) )
			|| ( (ArenaMonsterAnzahl == 2) && (Npc_IsDead(ArenaMonsterNPC1) && Npc_IsDead(ArenaMonsterNPC2)) )
			|| ( (ArenaMonsterAnzahl == 3) && (Npc_IsDead(ArenaMonsterNPC1) && Npc_IsDead(ArenaMonsterNPC2) && Npc_IsDead(ArenaMonsterNPC3)) )
		{
			AI_Wait (self, 1);
			Arena_AssessDefeat(); // damit ein Spruch abgegeben wird
			return LOOP_END;
		};

		return LOOP_CONTINUE;
	};*/

	Npc_SetStateTime (self,0);
	return LOOP_CONTINUE;
};

func void ZS_ArenaSpectator_end()
{
	Npc_ClearAIQueue (self); //MH: ggf. "Aufschaukler" killen (s. B_CheerFight)
	AI_PlayAni (self, "T_WATCHFIGHT_2_STAND");

	/*if Hlp_GetInstanceID(self)==Hlp_GetInstanceID(spec1)
	{Npc_ExchangeRoutine (spec1,"START");};
	if Hlp_GetInstanceID(self)==Hlp_GetInstanceID(spec2)
	{Npc_ExchangeRoutine (spec2,"START");};
	if Hlp_GetInstanceID(self)==Hlp_GetInstanceID(spec3)
	{Npc_ExchangeRoutine (spec3,"START");};
	if Hlp_GetInstanceID(self)==Hlp_GetInstanceID(spec4)
	{Npc_ExchangeRoutine (spec4,"START");};
	if Hlp_GetInstanceID(self)==Hlp_GetInstanceID(spec5)
	{Npc_ExchangeRoutine (spec5,"START");};
	if Hlp_GetInstanceID(self)==Hlp_GetInstanceID(spec6)
	{Npc_ExchangeRoutine (spec6,"START");};
	if Hlp_GetInstanceID(self)==Hlp_GetInstanceID(spec7)
	{Npc_ExchangeRoutine (spec7,"START");};
	if Hlp_GetInstanceID(self)==Hlp_GetInstanceID(GRD_210_Scatty)
	{Npc_ExchangeRoutine (GRD_210_Scatty,"STANDVORARENA");};

	var float waitsec; waitsec = IntToFloat( Hlp_Random( 17 ) + 1 );
	if !( Hlp_GetInstanceID(self)==Hlp_GetInstanceID(GRD_210_Scatty) ) {
	AI_Wait (self, waitsec ); // wartet einige Sekunden, bevor er heimgeht
	};*/
};