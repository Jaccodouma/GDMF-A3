#include "../../script_mission.hpp"

addMissionEventHandler ["Map", {
	params ["_mapIsOpened", "_mapIsForced"];

	if (_mapIsOpened) then {
		if (serverCommandAvailable "#restartserver" || isServer) then {
			// Update admin menu 
			[] call GDMF_fnc_updateAdminMenu; 
		} else {
			// Remove admin menu
			[] call GDMF_fnc_removeAdminMenu
		};
	};
}];