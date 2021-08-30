#include "script_mission.hpp"

// Initialized the loadout selection menu
GVAR(LoadoutDiaryRecord) = player createDiaryRecord [
	"Diary", 
	["Loadout", ""], 
	taskNull, "", false
]; 

[] call GD_Loadouts_fnc_updateRecord; 
