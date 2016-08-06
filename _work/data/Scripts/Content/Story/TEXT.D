// *****************************************************************************************
// Mobsi-Fokusnamen
// *****************************************************************************************

CONST STRING MOBNAME_BACKPACK_1			= "a backpack a";
CONST STRING MOBNAME_CRATE			= "Kiste";
CONST STRING MOBNAME_CHEST			= "Truhe";
CONST STRING MOBNAME_BED			= "Bett";
CONST STRING MOBNAME_DOOR			= "Tür";
CONST STRING MOBNAME_CAMP			= "Lagerfeuer";
CONST STRING MOBNAME_TORCH			= "Fackel";
CONST STRING MOBNAME_TORCHHOLDER		= "Fackelhalter";
CONST STRING MOBNAME_BARBQ_SCAV			= "Scavenger am Spiess";
CONST STRING MOBNAME_BARRELO_OC			= "Fass";
CONST STRING MOBNAME_BENCH			= "Bank";
CONST STRING MOBNAME_ANVIL			= "Amboss";
CONST STRING MOBNAME_BUCKET			= "Wasser-Eimer";
CONST STRING MOBNAME_FORGE			= "Schmiede-Feuer";
CONST STRING MOBNAME_GRINDSTONE			= "Schleifstein";
CONST STRING MOBNAME_WHEEL			= "Winde";
CONST STRING MOBNAME_LAB			= "Alchemietisch";
CONST STRING MOBNAME_BOOK			= "Buch";
CONST STRING MOBNAME_CHAIR			= "Stuhl";
CONST STRING MOBNAME_CAULDRON			= "Kessel";
CONST STRING MOBNAME_THRONE			= "";
CONST STRING MOBNAME_PAN			= "Pfanne";
CONST STRING MOBNAME_REPAIR			= "Brett";
CONST STRING MOBNAME_WATERPIPE			= "Wasserpfeife";
CONST STRING MOBNAME_LADDER			= "Leiter";
CONST STRING MOBNAME_SWITCH			= "Schalter";
CONST STRING MOBNAME_BARONSTHRONE		= "Thron";
CONST STRING MOBNAME_ORE			= "Erzklumpen";
CONST STRING MOBNAME_ROPEWAY			= "a ropeway a";
CONST STRING MOBNAME_STOMPER			= "Erzstampfer";
CONST STRING MOBNAME_BELLOW			= "Blasebalg";
CONST STRING MOBNAME_STONEMILL			= "Steinmühle";
CONST STRING MOBNAME_ORC_MUMMY			= "Mumie";
CONST STRING MOBNAME_PILLAR			= "Säule";
CONST STRING MOBNAME_BASKET_RICE		= "a ricebasket a";
CONST STRING MOBNAME_DRUM			= "Trommel";
CONST STRING MOBNAME_GROUND_SLOT		= "n/a";
CONST STRING MOBNAME_HERB_PSI			= "Krautstampfer";
CONST STRING MOBNAME_IDOL			= "Statuette";
CONST STRING MOBNAME_LEAN_WALL			= "a leanwall a";
CONST STRING MOBNAME_ORCDRUM			= "Orktrommel";
CONST STRING MOBNAME_TARGETSTONE		= "Zielscheibe";
CONST STRING MOBNAME_SHRINE			= "Orkischer Herzschrein";
CONST STRING BARBQ_SCAV				= "Drehspieß";


// ************************************
// B_RefuseAction
// ************************************
const string PRINT_KeyMissing				= "Dafür brauche ich den richtigen Schlüssel.";
const string PRINT_PicklockMissing			= "Ich brauche einen Dietrich.";
const string PRINT_PicklockOrKeyMissing	= "Ich brauche entweder den Schlüssel oder einen Dietrich.";
const string PRINT_NeverOpen				= "Da lässt sich nichts machen.";
const string PRINT_Toofar_Away				= "Das ist zu weit entfernt.";
const string PRINT_WrongSide				= "Das ist die falsche Seite.";
const string PRINT_MissingItem				= "Mir fehlt der entsprechende Gegenstand.";
const string PRINT_AnotherUser				= "Das wird gerade benutzt.";
const string PRINT_NoPicklockTalent			= "Dafür habe ich kein Talent.";
const string PRINT_NeedKey					= "Dafür brauche ich den Schlüssel.";

// ************************************
// NPC_Plunder_Is_Empty
// ************************************

const string PRINT_NothingToGet				= "Da ist nichts zu holen...";
const string PRINT_NothingToGet02			= "Nichts zu holen...";
const string PRINT_NothingToGet03			= "Nichts zu plündern...";

// ------ G_CanNotCast ------
const string PRINT_MAGCIRCLES_MISSING		= "magische Kreise zu niedrig, um die Rune anzulegen";

// ***********************************
// Inventar
// ***********************************
const string PRINT_Trade_Not_Enough_Gold	= "Du hast nicht genug Gold um den Gegenstand zu kaufen.";


// *****************************************************************************************
// Gildennamen
// *****************************************************************************************

CONST STRING TXT_GUILDS	[GIL_MAX] =	{
// - Charakterblatt	(Text der Spielergilde)
// - Debuganzeige (Taste "G")

	"(keine)",
	"Erzbaron",
	"Gardist",
	"Schatten",
	"Feuermagier",
	"Buddler",
	"Wassermagier",
	"Söldner",
	"Bandit",
	"Bauer",
	"Schürfer",			// 10
	"Guru",
	"Novize",
	"Templer",
	"Dämonenbeschw.",
	"Babe",
	"",
	"Waran",			// 17
	"Sleeper",
	"Goblin",
	"Troll",
	"Snapper",
	"Minecrawler",
	"Fleischwanze",
	"Scavenger",
	"Dämon",
	"Wolf",
	"Schattenläufer",
	"Bloodfly",
	"Sumpfhai",			// 30
	"Zombie",
	"Zombie	Orc",
	"Skelett",
	"Ork-Hund",
	"Molerat",
	"Golem",
	"Lurker",
	"",				// 38
	"Orc Schamane",
	"Orc Krieger",
	"Orc Späher",
	"Orc Sklave"		,
	"B. Golem"		, //beschworener Golem
	"Dämon"			,
	"B. Dämon"		,
	"Troll"			,
	"Sumpfhai"		,
	"Drache"		,
	"Molerat"		,
	"Alligator"		, //Addon
	"Sumpfgolem"	, //Addon
	"Wächter"		, //Addon
	"Steinpuma"		, //Addon
	"A"				, //Addon
	"Wächter"		, //Addon
	"Zombie"		, //Addon
	""				,
	""				,
	""				, //58 - Gil_Seperator_Orc
	"Ork"			,
	"Ork"			,
	"Untoter Ork"	,
	"Drakonier"		,
	"X"				,
	"Y"				,
	"Z"				
};

////////////////////////////////////////////////////////////////////////////////
//
//	Spells: Spell-Namen (Array)
//

const string TXT_SPELLS[MAX_SPELL] =
{
	"Licht",					// SPL_LIGHT		=	0;
	"Feuerball",				// SPL_FIREBALL		=	1;
	"Angst",					// SPL_FEAR			=	3;
	"Heilung",					// SPL_HEAL			=	4;
	"n/a",						// SPL_LIGHTNING	=	5;
	"Dämon beschwören",			// SPL_SUMMONDEMON	=	6;
	"Skelette beschwören",		// SPL_SUMMONSKELETON=	7;
	"n/a",						// SPL_FORGET		=	8;
	"Windfaust",				// SPL_WINDFIST		=	9;
	"Telekinese",				// SPL_TELEKINESIS	=	10;
	"Charme",					// SPL_CHARM		=	11;
	"Schlaf",					// SPL_SLEEP		=	12;
	"Pyrokinese",				// SPL_PYROKINESIS	=	13;
	"Todesring",				// SPL_MASSDEATH	=	14;
	"Kontrolle",				// SPL_CONTROL		=	15;
	"Untote vernichten",		// SPL_DESTROYUNDEAD=	16;
	"Feuerpfeil",				// SPL_FIREBOLT		=	17;
	"Feuersturm",				// SPL_FIRESTORM	=	18;
	"Feuerregen",				// SPL_FIRERAIN		=	19;
	"n/a",						// SPL_SPEED		=	20;
	"Teleport Feuermagier",		// SPL_TELEPORT1	=	21;
	"Teleport Wassermagier",	// SPL_TELEPORT2	=	22;
	"Teleport Dämonenbeschwörer",	// SPL_TELEPORT3	=	23;
	"orkischer Teleport",		// SPL_TELEPORT4	=	24;
	"Teleport Sumpflager",		// SPL_TELEPORT5	=	25;
	"Blitz",					// SPL_CHAINLIGHTNING=	40;
	"Eispfeil",					// SPL_THUNDERBOLT	=	41;
	"Kugelblitz",				// SPL_THUNDERBALL	=	42;
	"Eisblock",					// SPL_ICECUBE		=	43;
	"Eiswelle",					// SPL_ICEWAVE		=	44;
	"Golem beschwören",			// SPL_SUMMONGOLEM	=	45;
	"Armee der Finsternis",		// SPL_ARMYOFDARKNESS=	46;
	"Sturmfaust",				// SPL_STORMFIST	=	47;
	"n/a",						// SPL_TELEKINESIS2	=	48;
	"Todeshauch",				// SPL_BREATHOFDEATH=	49;
	"Schrumpfen",				// SPL_SHRINK		=	50;
	"n/a",						// SPL_UNDRESS		=	51;
	"n/a",						// SPL_DANCE		=	52;
	"Raserei",					// SPL_BERZERK		=	53;
	"Zorn des URIZIEL",			// SPL_NEW1			=	17;
	"Eiswelle",					// 39	SPL_IceWave
	"Dämon",					// 40	SPL_SummonDemon
	"Vollheilung",				// 41	SPL_FullHeal

	// Kreis 6
	"Feuerregen",				// 42	SPL_Firerain
	"Todeshauch",				// 43	SPL_BreathOfDeath
	"Massensterben",			// 44	SPL_MassDeath
	"Armee der Finsternis",		// 45	SPL_ArmyOfDarkness
	"Schrumpfen",				// 46	SPL_Shrink

	// Scrolls
	"Verwandlung Blutfliege",	// SPL_TRF_BLOODFLY	=	26;
	"n/a",						// SPL_TRF_BLOODHOUND=	27;
	"Verwandlung Minecrawler",	// SPL_TRF_CRAWLER	=	28;
	"Verwandlung Lurker",		// SPL_TRF_LURKER	=	29;
	"Verwandlung Fleischwanze",	// SPL_TRF_MEATBUG	=	30;
	"Verwandlung Molerat",		// SPL_TRF_MOLERAT	=	31;
	"Verwandlung Orc-Hund",		// SPL_TRF_ORCDOG	=	32;
	"Verwandlung Scavenger",	// SPL_TRF_SCAVENGER=	34;
	"Verwandlung Schattenläufer",	// SPL_TRF_SHADOWBEAST=	36;
	"Verwandlung Snapper",		// SPL_TRF_SNAPPER	=	37;
	"Verwandlung Waran",		// SPL_TRF_WARAN	=	38;
	"Verwandlung Wolf",			// SPL_TRF_WOLF		=	39;
	"Vergessen"	,				// 59	SPL_Charm

	// Kreis 5
	"Heiliges Geschoß",			// 60	SPL_MasterOfDisaster

	// ???
	"TXT_SPL_DEATHBOLT",		// 61	SPL_Deathbolt
	"TXT_SPL_DEATHBALL",		// 62	SPL_Deathball
	"TXT_SPL_CONCUSSIONBOLT",	// 63	SPL_ConcussionBolt
	"TXT_SPL_RESERVED_64",		// 64	SPL_Reserved_64
	"TXT_SPL_RESERVED_65",		// 65	SPL_Reserved_65
	"Splatung",		// 66	SPL_Reserved_66
	"TXT_SPL_RESERVED_67",		// 67	SPL_Reserved_67
  	"TXT_SPL_RESERVED_68",		// 68	SPL_Reserved_68
  	"Soulcube",		// 69	SPL_Reserved_69
  
  	// Magick (Wasser)
 	"Unwetter",					// 70	SPL_Thunderstorm
	"Windhose",					// 71	SPL_Whirlwind
	"Wasserfaust",				// 72	SPL_WaterFist
	"Eislanze",					// 73	SPL_IceLance
	"Menschen Aufblähen",		// 74	SPL_Inflate
	"Geysir",					// 75	SPL_Geyser
	"Wasserwand",				// 76	SPL_Waterwall
	"TXT_SPL_RESERVED_77",		// 77	SPL_Reserved_77
	"TXT_SPL_RESERVED_78",		// 78	SPL_Reserved_78
	"TXT_SPL_RESERVED_79",		// 79	SPL_Reserved_79

	// Magick (Maya)
	"Insektenplage",			// 80	SPL_Plague
	"Insektenschwarm",			// 81	SPL_Swarm
	"Wurzelschlingen",			// 82	SPL_GreenTentacle
	"Erdbeben",					// 83	SPL_Earthquake
	"Wächter erschaffen",		// 84	SPL_SummonGodzilla
	"Beliar's Zorn",			// 85	SPL_Energyball
	"Energie stehlen",			// 86	SPL_SuckEnergy
	"Schrei der Toten",			// 87	SPL_Skull
	"Zombie erschaffen",		// 88	SPL_SummonZombie
	"Mud beschwören",			// 89	SPL_SummonMud

	// ...
	"Snapper rufen",		// 90	SPL_Reserved_90
	"Nachtsicht",		// 91	SPL_Reserved_91
	"Warg beschwören",		// 92	SPL_Reserved_92
	"Rudel beschwören",		// 93	SPL_Reserved_93
	"Schattenläufer beschwören",		// 94	SPL_Reserved_94
	"Amok",		// 95	SPL_Reserved_95
	"ghostspell",		// 96	SPL_Reserved_96
	"Drachen herbeirufen",		// 97	SPL_Reserved_97
	"Erdbeben",		// 98	SPL_Reserved_98
	"Kontrolle",		// 99	SPL_Reserved_99

	// DM
	"Blutopfer",	// 100 SPL_Blutopfer
	"Altern",	// 101 SPL_Altern
	"Seelenraub",   // 102 SPL_Seelenraub
	"Giftanschlag", // 103 SPL_Giftanschlag
	"Wahnsinn",      // 104 SPL_Wahnsinn
	"Zorn Adanos",
	"Eiswolf rufen",
	"Eisgolem erschaffen",
	"TXT_SPL_RESERVED_90",		// 90	SPL_Reserved_90
	"TXT_SPL_RESERVED_91",
	"Beschworene Kreaturen zurückschicken"
};


// *****************************************************************************************
// Charakterbogen-Texte: TALENTE
// *****************************************************************************************

CONST STRING TXT_TALENTS [NPC_TALENT_MAX] =
{
	"",							//NPC_TALENT_UNKNOWN			= 0;
	"Einhänder",				//NPC_TALENT_1H					= 1;
	"Zweihänder",				//NPC_TALENT_2H					= 2;
	"Bogen",					//NPC_TALENT_BOW				= 3;
	"Armbrust",					//NPC_TALENT_CROSSBOW			= 4;
	"Schlösser öffnen",			//NPC_TALENT_PICKLOCK			= 5;	//wird jetzt per DEX geregelt UND es gibt nur noch Level 0 und 1 (nicht	mehr 2)
	"Taschendiebstahl",							//altes	Pickpocket aus Gothic 1	- NICHT	benutzen! Bleibt als Relikt	im Code	= 6;
	"Magie",					//NPC_TALENT_MAGE				= 7;	// Magiekreis
	"Schleichen",				//NPC_TALENT_SNEAK				= 8;
	"",							//raus //NPC_TALENT_REGENERATE	= 9;
	"",							//raus //NPC_TALENT_FIREMASTER	= 10;
	"Akrobatik",				//NPC_TALENT_ACROBAT			= 11;
	"Taschendiebstahl",			//NPC_TALENT_PICKPOCKET			= 12;	//NEUES	Pickpocket
	"Schmieden",				//NPC_TALENT_SMITH				= 13;
	"Runen erschaffen",			//NPC_TALENT_RUNES				= 14;
	"Alchemie",					//NPC_TALENT_ALCHEMY			= 15;
	"Tiere ausweiden",			//NPC_TALENT_TAKEANIMALTROPHY	= 16;
	"Fremde Sprache lesen",		//NPC_TALENT_FOREIGNLANGUAGE	= 17;
	"Irrlicht Fähigkeiten",		//NPC_TALENT_WISPDETECTOR		= 18;
	"",							//NPC_TALENT_C					= 19;
	"",							//NPC_TALENT_D					= 20;
	""							//NPC_TALENT_E					= 21;
};


CONST STRING TXT_TALENTS_SKILLS	[NPC_TALENT_MAX] =
{
	"",															//NPC_TALENT_UNKNOWN			= 0;
	"ungeübt|ausgebildet|gemeistert",						//NPC_TALENT_1H          
	"ungeübt|ausgebildet|gemeistert",                       //NPC_TALENT_2H           
	"ungeübt|ausgebildet|gemeistert",                       //NPC_TALENT_BOW         
	"ungeübt|ausgebildet|gemeistert",                       //NPC_TALENT_CROSSBOW    
	"-|ungeübt|ausgebildet|gemeistert",                       //NPC_TALENT_PICKLOCK   
	"ungeübt|ausgebildet|gemeistert",                       //NPC_TALENT_PICKPOCKET
	"nein|1.Kreis|2.Kreis|3.Kreis|4.Kreis|5.Kreis|6.Kreis", //NPC_TALENT_MAGE         
	"nein|ja",                                              //NPC_TALENT_SNEAK       
	"",														//raus //NPC_TALENT_REGENERATE	= 9;
	"",														//raus //NPC_TALENT_FIREMASTER	= 10;
	"nein|ja",                                               //NPC_TALENT_ACROBAT      
	"ungeübt|ausgebildet|gemeistert",									//NPC_TALENT_PICKPOCKET			= 12;	//NEUES	Pickpocket
	"-|Gelernt",												//NPC_TALENT_SMITH				= 13;
	"-|Gelernt",												//NPC_TALENT_RUNES				= 14;
	"-|Gelernt",												//NPC_TALENT_ALCHEMY			= 15;
	"-|Gelernt",												//NPC_TALENT_TAKEANIMALTROPHY	= 16;
	"-|Gelernt",												//NPC_TALENT_FOREIGNLANGUAGE	= 17;	//ADDON
	"-|Gelernt",												//NPC_TALENT_WISPDETECTOR		= 18;
	"-|Gelernt",												//NPC_TALENT_C					= 19;
	"-|Gelernt",												//NPC_TALENT_D					= 20;
	"-|Gelernt"													//NPC_TALENT_E					= 21;
};


// *****************************************************************************************
// Inventory-Kategorien
// *****************************************************************************************

CONST STRING TXT_INV_CAT [INV_CAT_MAX] = {
	"",
	"Waffen",
	"Rüstungen",
	"Magie",
	"Artefakte",
	"Nahrung",
	"Tränke",
	"Schriften",
	"Verschiedenes"
};


// ***************************************************************************************
// Fokusnamen der Ambient-NSCs
// ***************************************************************************************

CONST STRING NAME_Buddler		= "Buddler";
CONST STRING NAME_Schatten		= "Schatten";
CONST STRING NAME_ConvoiTraeger	= "Konvoi Träger";
CONST STRING NAME_ConvoiWache	= "Konvoi Wache";
CONST STRING NAME_Torwache		= "Torwache";
CONST STRING NAME_Brueckenwache	= "Brückenwache";
CONST STRING NAME_Gardist		= "Gardist";
CONST STRING NAME_Bauer			= "Bauer";
CONST STRING NAME_Schlaeger		= "Schläger";
CONST STRING NAME_Schuerfer		= "Schürfer";
CONST STRING NAME_Organisator	= "Bandit";
CONST STRING NAME_Soeldner		= "Söldner";
CONST STRING NAME_Novize		= "Novize";
CONST STRING NAME_Templer		= "Templer";
CONST STRING NAME_Raeuber		= "Räuber";
CONST STRING NAME_Tuersteher	= "Rausschmeisser";

const string NAME_MadNovice		=	"Bessessener Novize";
const string NAME_MadTemplar	=	"Fanatischer Templer";
const string NAME_MadTemplar2	=	"Apokalyptischer Templer";


// *************************************************************
// DIALOG OPTIONEN
// *************************************************************

CONST STRING DIALOG_ENDE		= "ENDE";
CONST STRING DIALOG_BACK		= "ZURÜCK";
const string DIALOG_TRADE		= "(Tauschen)";

// *************************************************************
// FOKUSNAMEN DER ITEMS
// *************************************************************

const string NAME_Ring			= "Ring";
const string NAME_Amulett		= "Amulett";
const string NAME_Trank			= "Trank";
const string NAME_Rune			= "Rune";
const string NAME_Spruchrolle	= "Spruchrolle";


// *************************************************************
// TEXTE FÜR ITEM-BESCHREIBUNGEN IM INV.
// *************************************************************

const string NAME_Value			= "Wert:";

const string NAME_Mag_Circle	= "Kreis:";
const string NAME_Manakosten	= "Manakosten:";
const string NAME_ManakostenMax	= "Manakosten (max.):";
const string NAME_ManaPerSec	= "Mana pro Sec.";
const string NAME_Duration		= "Dauer (Minuten)";

const string NAME_Mana_needed	= "benötigtes Mana:";
const string NAME_Str_needed	= "benötigte Stärke:";
const string NAME_Dex_needed	= "benötigte Geschicklichkeit:";

const string NAME_Spell_Load	= "Aufladbarer Zauber";
const string NAME_Spell_Invest	= "Aufrechterhaltungs-Zauber";

const string NAME_Dam_Edge		= "Waffenschaden";
const string NAME_Dam_Point		= "Pfeilschaden";
const string NAME_Dam_Fire		= "Feuerschaden";
const string NAME_Dam_Magic		= "Magieschaden";
const string NAME_Dam_Fly		= "Wirbelschaden";

const string NAME_Damage		= "Schaden";
const string NAME_PerMana		= " (pro Mana)";
const string NAME_DamagePerSec	= "Schaden pro Sec.";

const string NAME_Prot_Edge		= "Schutz vor Waffen:";
const string NAME_Prot_Point	= "Schutz vor Pfeilen:";
const string NAME_Prot_Fire		= "Schutz vor Feuer:";
const string NAME_Prot_Magic	= "Schutz vor Magie:";

const string NAME_Bonus_HP		= "Lebensenergie-Bonus:";
const string NAME_Bonus_Mana	= "Mana-Bonus:";

const string NAME_Bonus_HpMax	= "Bonus für maximale Lebensenergie:";
const string NAME_Bonus_ManaMax	= "Bonus für maximales Mana:";

const string NAME_Bonus_Dex		= "Geschicklichkeits-Bonus:";
const string NAME_Bonus_Str		= "Stärke-Bonus:";

const string NAME_OneHanded		= "Einhandwaffe";
const string NAME_TwoHanded		= "Zweihandwaffe:";

//----------------- MH: zusätzlich wegen FlexTranslate ---------------------

const string NAME_HealingPerMana = "Heilung pro Mana"; 

const string NAME_BuyAttributeSTR = "Stärke + ";
const string NAME_BuyAttributeDEX = "Geschicklichkeit + ";
const string NAME_BuyAttributeMAN = "Mana + ";

// ***************************************************************************************
// sonstige Bildschirmausgaben
// ***************************************************************************************
const string NAME_XPGained			= "Erfahrung + ";			// bei jedem Erfahrungsgewinn
const string NAME_LevelUp			= "Stufe gestiegen!";		// beim Stufenaufstieg

const string NAME_NewLogEntry		= "neuer Tagebucheintrag";




//***************************************************************************************
// Stringkonstanten aus den G_FUNCTIONS
//***************************************************************************************
const string _STR_INVALID					= "(Unbekannt)-"									;

const string _STR_ATTRIBUTE_HITPOINTS		= "Lebens-"											;
const string _STR_ATTRIBUTE_HITPOINTS_MAX	= "maximale Lebens-"								;
const string _STR_ATTRIBUTE_MANA			= "Mana-"											;
const string _STR_ATTRIBUTE_MANA_MAX		= "maximale Mana-"									;
const string _STR_ATTRIBUTE_STRENGTH		= "Stärke-"											;
const string _STR_ATTRIBUTE_DEXTERITY		= "Geschicklichkeits-"								;
const string _STR_ATTRIBUTE_MAGIC_CIRCLE	= "magische Zauber-"								;

// Bildschirmausgabe, falls der Spieler eine Waffe anlegen will, für die ihm Attributspunkte fehlen
const string _STR_CANNOTUSE_PRE_PLAYER		= "es fehlen "										;
const string _STR_CANNOTUSE_POINTS			= "Punkte"											;
const string _STR_CANNOTUSE_LEVELS		    = "Stufen"											;
const string _STR_CANNOTUSE_POST			= ", um diesen Gegenstand anzulegen"				;

// Bildschirmausgabe, falls ein NSC zu wenig Attributspunkte, für das Anlegen von Waffen hat (nur Debugzwecke!)
const string _STR_CANNOTUSE_PRE_NPC			= " ("												;
const string _STR_CANNOTUSE_POST_NPC		= ") fehlen "										;

// Bidschrimausgabe zum Thema Schloß öffnen/knacken
const string _STR_MESSAGE_INTERACT_NO_KEY	= "kein Dietrich oder passender Schlüssel";
const string _STR_MESSAGE_PICKLOCK_SUCCESS	= "das hörte sich gut an";
const string _STR_MESSAGE_PICKLOCK_UNLOCK	= "das Schloß ist geknackt";
const string _STR_MESSAGE_PICKLOCK_FAILURE	= "Mist.. wieder von vorne";
const string _STR_MESSAGE_PICKLOCK_BROKEN	= "der Dietrich ist abgebrochen";

// Bidschrimausgabe zum Thema Hebel/Winden
const string _STR_MESSAGE_OCLEVER_STUCKS	= "der Hebel bewegt sich kein Haarbreit"			;
const string _STR_MESSAGE_OCLEVER_MOVES		= "die Statuette bewegt den Hebel"			;
const string _STR_MESSAGE_WHEEL_STUCKS		= "die Winde klemmt"					;

// Bidschrimausgabe beim storybedingten Transfer von Items
const string _STR_MESSAGE_ITEM_GIVEN		= " Gegenstand gegeben"								;	//SPACE davor wichtig, weil Trennzeichen
const string _STR_MESSAGE_ITEMS_GIVEN		= " Gegenstände gegeben"							;
const string _STR_MESSAGE_ORE_GIVEN			= " Erz gegeben"									;
const string _STR_MESSAGE_ITEM_TAKEN		= " Gegenstand erhalten"							;
const string _STR_MESSAGE_ITEMS_TAKEN		= " Gegenstände erhalten"							;
const string _STR_MESSAGE_ORE_TAKEN			= " Erz erhalten"									;

// Bidschrimausgabe fürs Tausch-Fenster
const string _STR_MESSAGE_TRADE_FAILURE		= "der Wert deiner Tauschware ist nicht hoch genug"	;

// GILDENAUFNAHMEBEDINGUNG (für die Funktion "B_PrintGuildCondition()" )
const string _STR_MESSAGE_Joincamp			=	"Voraussetzung für die Aufnahme: Stufe "; 

// nicht beklaubare NSCs
const string _STR_MESSAGE_CANNOTSTEAL		=	"kann nicht beklaut werden";

// ***************************************************************************************
// Relative Y-Koordinaten für die Bildschirmausgabe (in % der aktuellen Bildhöhe)
// ***************************************************************************************
const int	_YPOS_MESSAGE_GIVEN				=	37;
const int	_YPOS_MESSAGE_TAKEN				=	40;
const int	_YPOS_MESSAGE_LOGENTRY			=	45;
const int	_YPOS_MESSAGE_XPGAINED			=	50;
const int	_YPOS_MESSAGE_LEVELUP			=	55;
const int 	_YPOS_MESSAGE_Joincamp			=	50;
const int	_YPOS_MESSAGE_PICKLOCK_SUCCESS	=	6;
const int	_YPOS_MESSAGE_PICKLOCK_UNLOCK	=	9;
const int	_YPOS_MESSAGE_PICKLOCK_FAILURE	=	12;
const int 	_YPOS_MESSAGE_PICKLOCK_BROKEN	=	15;
const int	_YPOS_MESSAGE_CANNOTSTEAL		=	6;


// ***************************************************************************************
// Zeitdauer der Bildschirmausgabe (in Sekunden)
// ***************************************************************************************
const int	_TIME_MESSAGE_GIVEN				=	4;
const int	_TIME_MESSAGE_TAKEN				=	4;
const int	_TIME_MESSAGE_LOGENTRY			=	4;
const int	_TIME_MESSAGE_XPGAINED			=	3;
const int	_TIME_MESSAGE_LEVELUP			=	5;
const int	_TIME_MESSAGE_RAISEATTRIBUTE	=	4;
const int	_TIME_MESSAGE_Joincamp			=	5;
const int	_TIME_MESSAGE_PICKLOCK			=	3;
const int	_TIME_MESSAGE_CANNOTSTEAL		=	2;


// ***************************************************************************************
// Zusammenbauen von Info_AddChoice()-Strings beim Kaufen/Lernen
// ***************************************************************************************
const string NAME_BuyArmorPrefix	=	" (";	
const string NAME_BuyArmorPostfix	=	" Erz)";	
const string NAME_LearnPrefix		=	" (";	
const string NAME_LearnMidfix		=	" Erz, ";
const string NAME_LearnPostfixS		=	" Lernpunkt)";	
const string NAME_LearnPostfixP		=	" Lernpunkte)";	

const string NAME_LearnStrength_1	=	"Stärke + 1";
const string NAME_LearnStrength_5	=	"Stärke + 5";
const string NAME_LearnStrength_10	=	"Stärke + 10";
const string NAME_LearnStrength_20	=	"Stärke + 20";

const string NAME_LearnDexterity_1	=	"Geschick + 1";
const string NAME_LearnDexterity_5	=	"Geschick + 5";
const string NAME_LearnDexterity_10	=	"Geschick + 10";
const string NAME_LearnDexterity_20	=	"Geschick + 20";

const string NAME_LearnMana_1		=	"Mana + 1";
const string NAME_LearnMana_5		=	"Mana + 5";
const string NAME_LearnMana_10		=	"Mana + 10";
const string NAME_LearnMana_20		=	"Mana + 20";

const string NAME_Learn1h_1			=	"Einhänder Stufe 1";
const string NAME_Learn1h_2			=	"Einhänder Stufe 2";
const string NAME_Learn2h_1			=	"Zweihänder Stufe 1";
const string NAME_Learn2h_2			=	"Zweihänder Stufe 2";

const string NAME_LearnBow_1		=	"Bogen Stufe 1";
const string NAME_LearnBow_2		=	"Bogen Stufe 2";
const string NAME_LearnCrossbow_1	=	"Armbrust Stufe 1";
const string NAME_LearnCrossbow_2	=	"Armbrust Stufe 2";

const string NAME_LearnMage_1		=	"1. Kreis der Magie";
const string NAME_LearnMage_2		=	"2. Kreis der Magie";
const string NAME_LearnMage_3		=	"3. Kreis der Magie";
const string NAME_LearnMage_4		=	"4. Kreis der Magie";
const string NAME_LearnMage_5		=	"5. Kreis der Magie";
const string NAME_LearnMage_6		=	"6. Kreis der Magie";

const string NAME_LearnPickpocket_1	=	"Taschendiebstahl Stufe 1";
const string NAME_LearnPickpocket_2	=	"Taschendiebstahl Stufe 2";
const string NAME_LearnPicklock_1	=	"Schlösser öffnen Stufe 1";
const string NAME_LearnPicklock_2	=	"Schlösser öffnen Stufe 2";

const string NAME_LearnAcrobat		=	"Akrobatik";
const string NAME_LearnSneak		=	"Schleichen";

const string NAME_RaiseStrength		=	"Stärke +";
const string NAME_RaiseDexterity	=	"Geschick +";
const string NAME_RaiseStrDex		=	"Stärke und Geschick +";
const string NAME_RaiseManaMax		=	"maximale Mana +";
const string NAME_RaiseHealthMax	=	"maximale Lebensenergie +";

//---------------- MH: für B_BuildBuyArmorString ----------------------------

const string NAME_CorristoHighRobe	= 	"Meister, ich möchte die hohe Robe des Feuers tragen.";
const string NAME_SaturasHighRobe	= 	"Hohe Robe";
const string NAME_DiegoHeavyShadows	=	"Schwere Schattenrüstung. Schutz: Waffen 40, Pfeile 5, Feuer 20";
const string NAME_StoneHeavyGuards	= 	"Schwere Garderüstung. Schutz: Waffen 70, Pfeile 10, Feuer 35";
const string NAME_StoneGuards		= 	"Garderüstung. Schutz: Waffen 55, Pfeile 10, Feuer 25";
const string NAME_WolfBandits		= 	"Banditenrüstung. Schutz: Waffen 35, Pfeile 5, Feuer 15"; 
const string NAME_WolfHeavyBandits	= 	"Schwere Banditenrüstung. Schutz: Waffen 40, Pfeile 5, Feuer 20";
const string NAME_LeeMercs			= 	"Söldnerrüstung. Schutz: Waffen 55, Pfeile 10, Feuer 25";
const string NAME_LeeHeavyMercs		= 	"Schwere Söldnerrüstung. Schutz: Waffen 70, Pfeile 10, Feuer 35";
const string NAME_FiskLightDiggers	= 	"Leichte Buddlerhosen. Schutz: Waffen 10, Feuer 5";
const string NAME_FiskDiggers		= 	"Buddlerhosen. Schutz: Waffen 15, Feuer 5";
const string NAME_GorNaTothHeavyTpl = 	"Schwere Templerrüstung. Schutz: Waffen 70, Pfeile 10, Feuer 35";
const string NAME_GorNaTothTpl 		=	"Templerrüstung. Schutz: Waffen 55, Pfeile 10, Feuer 25";
const string NAME_TorwachenPsiRock	=	"Rock. Schutz: Waffen 15, Feuer 10";




// ***************************************************************************************
// Menuetext-Konstanten
// ***************************************************************************************
// Text, der erscheint, wenn eine Menueoption noch ein APPLY benoetigt (Aufloesung).
// Vermutlich kein Text notwendig, da durch Menuestruktur deutlich gemacht
const string MENU_TEXT_NEEDS_APPLY		= "";

// Text, der erscheint, wenn ein Restart des Spiels notwendig ist (Grafikkartebauswahl).
// Maximal ca. 60 Zeichen, da nur eine Zeile Platz!
const string MENU_TEXT_NEEDS_RESTART	= "Einige Einstellungen werden erst nach einem Neustart aktiv";

//
//	TRADE MANAGER
//
const string STR_INFO_TRADE_ACCEPT						= "Annehmen"			;
const string STR_INFO_TRADE_RESET						= "Ablehnen"			;
const string STR_INFO_TRADE_EXIT						= "Zurück"				;


const string NAME_Currency =	"Erz: ";
	