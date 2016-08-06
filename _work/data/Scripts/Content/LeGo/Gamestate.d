/***********************************\
              GAMESTATE
\***********************************/

//========================================
// Globals Gamestate-Variable
//========================================
// Konstanten in Userconst.d
var int Gamestate;

//========================================
// [intern] Variablen
//========================================
var int _Gamestate_Event;

//========================================
// Listener f�r Gamestate hinzuf�gen
//========================================
func void Gamestate_AddListener(var func f) {
    Event_AddOnce(_Gamestate_Event, f);
};

//========================================
// Listener f�r Gamestate entfernen
//========================================
func void Gamestate_RemoveListener(var func f) {
    Event_Remove(_Gamestate_Event, f);
};

//========================================
// [intern] Initialisierung
//========================================
func void _Gamestate_Init(var int state) {
    if(!_Gamestate_Event) {
        _Gamestate_Event = Event_Create();
    };
    Gamestate = state;
	FF_ApplyExt(_Gamestate_InitLate, 1, 1);
};
func void _Gamestate_InitLate() {
    Event_Execute(_Gamestate_Event, Gamestate);
};