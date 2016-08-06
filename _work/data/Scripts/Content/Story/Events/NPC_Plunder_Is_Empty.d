// ***************************************************
// Npc_Plunder_Is_Empty
// --------------------
// wird aufgerufen, wenn bewuﬂtloser/toter NPC/Monster 
// mit leerem Inventory angeklickt wird 
// ***************************************************

func void PLAYER_PLUNDER_IS_EMPTY()
{
	var int rnd; rnd = Hlp_Random (100);
	
	if (rnd <= 40)	
	{	
		Print(PRINT_NOTHINGTOGET);
		AI_PlayAni	(self,"T_DONTKNOW");
		B_SayOverlayNoTurnAround (self, self, "$NothingToGet");	
	}
	else if (rnd <= 80)	
	{	
		Print(PRINT_NOTHINGTOGET02);
		AI_PlayAni	(self,"T_DONTKNOW");
		B_SayOverlayNoTurnAround (self, self, "$NothingToGet02");	
	}
	else if (rnd <= 99)	
	{	
		Print(PRINT_NOTHINGTOGET03);
		AI_PlayAni	(self,"T_DONTKNOW");
		B_SayOverlayNoTurnAround (self, self, "$NothingToGet03");	
	};
};
