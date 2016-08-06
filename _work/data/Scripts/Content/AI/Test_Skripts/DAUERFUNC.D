FUNC VOID DAUERFUNC()
{
	if (Npc_HasItems(hero, ItKeLockpick) > 0)
	{
		CreateInvItems	(hero, ItKe_Lockpick, Npc_HasItems(hero, ItKeLockpick));
		Npc_RemoveInvItems	(hero, ItKeLockpick, Npc_HasItems(hero, ItKeLockpick));
	};
};

FUNC VOID EVT_BARRIERE_KILL()
{
	hero.attribute[ATR_HITPOINTS] = 0;

	Wld_PlayEffect	("BARRIERE_PC_SHOOT", hero, hero, 0, 0, 0, FALSE);
};

FUNC VOID EVT_BARRIERE_WARN()
{
	Wld_PlayEffect	("BARRIERE_PC_WARN", hero, hero, 0, 0, 0, FALSE);
};