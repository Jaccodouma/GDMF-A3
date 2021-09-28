// Update the admin menu 
#include "../../script_mission.hpp"

systemChat "Reloading admin menu..";

// Make sure admin menu subject exists 
GVAR(adminMenuSubject) = player createDiarySubject ["Admin", "Admin"];
if (missionNamespace getVariable [QGVAR(adminmenuRecord), ""] isEqualTo "") then {
	GVAR(adminmenuRecord) = player createDiaryRecord ["Admin", ["Admin", ""], taskNull,	"", false];
}; 


// Add menu 
/**
	Layout: 
	Title + Refresh
	Self/misc (add zeus, end mission, some other things?)

	List of squads with players and options: 
	 - Heal
	 - TP to x
	 - make medic, engi, squad lead 
	
	List of dead people (spectating)
	 - Revive options (where)
*/

_fn_groupsWithPlayers = {
	private _allGroupsWithPlayers = [];
	{_allGroupsWithPlayers pushBackUnique group _x} forEach allPlayers;
	_allGroupsWithPlayers
};

_fn_listPlayers = {
	_str = ""; 

	{
		// Add group header 
		_str = _str + format ["<font size='16' face='PuristaBold'>%1</font>", groupId _x];

		{
			if (!isPlayer _x) then {continue;};

			// Add unit text
			_str = _str + format ["<br/>%1 ", name _x];
			_str = _str + format ["<execute expression='player remoteExecCall [""ace_medical_treatment_fnc_fullHealLocal"", %1]'>[Heal]</execute> ", owner _x];
			// _str = _str + format ["<execute expression='%1'>[TP]</execute> ", QUOTE(GVAR(adminMenu_TPUnit) = _x)];
		} forEach units _x;
	} forEach (call _fn_groupsWithPlayers);

	_str
};

/*
	[player] call ace_medical_status_fnc_getBloodLoss
	[player] call ace_medical_status_fnc_isInStableCondition
	[player] call ace_medical_status_fnc_hasStableVitals
	[0.4] call ace_medical_gui_fnc_damageToRGBA
	[0.4] call ace_medical_gui_fnc_bloodLossToRGBA
*/

// Compile list
_text = format ["
<font size='20' face='PuristaBold'>Admin menu </font><execute expression='[] call GDMF_updateAdminMenu;'>[Reload]</execute>
<br/><font size='20' face='PuristaBold'>Players</font>
<br/>%1",
call _fn_listPlayers
];

player setDiaryRecordText [
	["Admin", GVAR(adminmenuRecord)], 
	["Admin", _text]
]; 

if (missionNamespace getVariable [QGVAR(adminMenu_TPUnit), ""] != "") then {
	systemChat str GVAR(adminMenu_TPUnit);
};