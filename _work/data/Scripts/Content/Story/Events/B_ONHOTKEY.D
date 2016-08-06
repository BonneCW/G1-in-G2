////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
///
///		Script functions for HOTKEYS (called by the engine)
///
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////
//
//	GAME_SCREEN_MAP
//

func int PLAYER_HOTKEY_SCREEN_MAP()
{
	var int mapInstance;

	mapInstance = 0;

	if (Npc_HasItems(hero, ItWrWorldmap_Orc) > 0)
	{
		mapInstance = ItWrWorldmap_Orc;
	}
	else if (Npc_HasItems(hero, ItWrWorldmap) > 0)
	{
		mapInstance = ItWrWorldmap;
	}
	else if (Npc_HasItems(hero, ItWrOMmap) > 0)
	{
		mapInstance = ItWrOMmap;
	};

	return mapInstance;
};

func void PLAYER_HOTKEY_LAME_POTION()
{
	Npc_GetTarget (hero);

	if (Hlp_IsValidNpc(other))
	{
		if (Npc_CanSeeNpc(hero, other))
		&& (Npc_GetWalkMode(hero) == NPC_SNEAK)
		{
			Npc_ClearAIQueue (other);
			AI_StandUpQuick (other);
			AI_StartState (other, ZS_PickPocket, 0, "");
		};
	};
};

func void PLAYER_HOTKEY_LAME_HEAL ()
{
	
};
