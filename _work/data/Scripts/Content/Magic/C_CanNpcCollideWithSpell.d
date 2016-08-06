// ******************************************************************
// B_AssessMagic
// -------------
// Wahrnehmung ist für ALLE NSCs IMMER aktiv
// auch für den Spieler (s.u.)
// wir aufgerufen, sobald irgendein Spruch auf einen NSC wirkt
// setzt den NSC dan in den entsprechenden ZS
// die meisten Spells führen allerdings zu keinem ZS
// (sind unten nicht berücksichtigt)
// ------------------------------------------------------------------
// Beachtem: if (Npc_GetActiveSpell(other) == SPL_Sleep) funzt nicht,
// weil Sleep INSTANT wirkt (d.h. sofort SENDCAST zurückliefert)
// und beim Aufruf von B_AssessMagic NICHT mehr "Active" ist!
// ******************************************************************

const int COLL_DONOTHING			= 0;
const int COLL_DOEVERYTHING			= 1<<0;
const int COLL_APPLYDAMAGE			= 1<<1;
const int COLL_APPLYHALVEDAMAGE		= 1<<2;
const int COLL_APPLYDOUBLEDAMAGE	= 1<<3;
const int COLL_APPLYVICTIMSTATE		= 1<<4;
const int COLL_DONTKILL				= 1<<5;


func int C_CanNpcCollideWithSpell(var int spellType)
{

	// --- Windfist ---
	if (spellType == SPL_WINDFIST)
	{
		if (Npc_GetDistToNpc (other,self) >= 1000)
		{
			return COLL_DONOTHING;
		};

		return COLL_DOEVERYTHING;
	};
	
	//----- Feuer -----	
	
	if (spellType  	== SPL_Firerain)
	|| (spellType   == SPL_Pyrokinesis)
	{
		if (C_NpcIsDown(self))
		|| (C_BodyStateContains(self,BS_SWIM)) 	
		|| (C_BodyStateContains(self,BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		// feuer monster bekommen halben schaden, und kein opfer zs
		if (self.aivar[AIV_MM_REAL_ID] == ID_FIREGOLEM)
		|| (self.aivar[AIV_MM_REAL_ID]	== 	ID_FIREWARAN)
		{
			return COLL_DONOTHING;
		}
		
		// grosse eis monster kriegen den doppelten schaden, brennen aber nicht
		if (self.aivar[AIV_MM_REAL_ID] == ID_ICEGOLEM)
		{
			return COLL_APPLYDOUBLEDAMAGE;
		};
					
		// alle grosse monster bekommen nur schaden, kein opfer zs
		if (self.guild == GIL_DEMON)
		|| (self.guild == GIL_TROLL)
		{	
			return COLL_APPLYDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	};
		
//----- Eis -----
		
	if (spellType  == SPL_IceCube)
	|| (spellTYpe  == SPL_IceWave)	
	{
		// wenn im schwimm oder tauchmodus, bewirkt der spell nix
		if (C_NpcIsDown(self))
		|| (C_BodyStateContains(self,BS_SWIM)) 	
		|| (C_BodyStateContains(self,BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		// feuer wesen erhalten doppelten schaden, kein opfer zs
		if (self.aivar[AIV_MM_REAL_ID] == ID_FIREGOLEM)
		|| (self.aivar[AIV_MM_REAL_ID]	== 	ID_FIREWARAN)
		{
			return COLL_APPLYDOUBLEDAMAGE;
		};
		
		// eis wesen erhalten halben schaden, kein opfer zs		
		if (self.aivar[AIV_MM_REAL_ID] == ID_ICEGOLEM)
		{
			return COLL_DONOTHING;
		};
		
		// grosse monster erhalten nur schaden, kein opfer zs		
		if (self.guild == GIL_DEMON)
		|| (self.guild == GIL_TROLL)
		{
			return COLL_APPLYDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	};

//------ Angst -----	

	if (spellType  == SPL_Fear)	
	{
		if (self.aivar[AIV_MM_REAL_ID] != ID_FIREGOLEM)
		&& (self.aivar[AIV_MM_REAL_ID] != ID_ICEGOLEM)
		&& (self.aivar[AIV_MM_REAL_ID] != ID_STONEGOLEM)
		&& (self.guild != GIL_SWAMPSHARK)
		&& (self.guild != GIL_TROLL)
		{
			return COLL_DOEVERYTHING;
		};
		return COLL_DONOTHING;
	};

// ---- Untote vernichten ----

	if (spellType == SPL_DestroyUndead)
	{
		if (C_NpcIsUndead(self))
		&& (self.attribute[ATR_HITPOINTS_MAX] <= SPL_Damage_DESTROYUNDEAD)
		{	
			return COLL_DOEVERYTHING;
		};
		return COLL_DONOTHING;
	};
	
// ---- Todeshauch ----	
	
	if (spellType == SPL_BreathOfDeath)
	{
		if (Npc_GetDistToNpc (other,self) < 1000)
		&& (!C_NpcIsUndead(self))
		{
			if (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(hero))	
			{
				return COLL_APPLYHALVEDAMAGE;
			};

			return COLL_DOEVERYTHING;
		};
		return COLL_DONOTHING;
	};

// ---- Todeswelle ----
	
	if (spellType == SPL_MassDeath)
	{
		if (!C_NpcIsUndead(self))	
		{
			return COLL_DOEVERYTHING;
		};
		return COLL_DONOTHING;
	};

//schrumpfen

	if (spellType 	== SPL_Shrink)
	{
		if (C_NpcIsDown(self))
		|| (C_BodyStateContains(self,BS_SWIM)) 	
		|| (C_BodyStateContains(self,BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		return COLL_DOEVERYTHING;
	};		
	
	
//----- Alle anderen -----	
	
	return COLL_DOEVERYTHING;
};

