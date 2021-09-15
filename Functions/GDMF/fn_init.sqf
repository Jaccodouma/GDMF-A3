params ["_giveSRR", "_SRRType", "_GiveLRRTo", "_LRRType", "_LRChannels"];


if (hasInterface) then {
    // Give SSR 
    if (_giveSRR && count([_SRRType] call acre_api_fnc_getAllRadiosByType)==0) then {
        player addItem _SRRType; 
    };

    // Give LRR
    if (
        (
            _GiveLRRTo == 3 || 
            (_GiveLRRTo >= 1) && (player == leader group player) ||
            (_GiveLRRTo >= 2) && (player getVariable ["ace_medical_medicclass", 0]>0) ||
            (_GiveLRRTo >= 2) && (player getVariable ["ace_isengineer", 0]>0)
        ) && 
        count([_LRRType] call acre_api_fnc_getAllRadiosByType) == 0
    ) then {
        player addItem _LRRType; 
    };
}; 

// Set radio channel names  
{
	["ACRE_PRC152", "default", _forEachIndex+1, "description", _x] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC148", "default", _forEachIndex+1, "label", _x] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC117F", "default", _forEachIndex+1, "name", _x] call acre_api_fnc_setPresetChannelField;
} forEach _LRChannels;
