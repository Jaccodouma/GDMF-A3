// call compile preprocessFileLineNumbers "scripts\set3DENGear.sqf";
_gear = [
	["ACE_fieldDressing", 20],
	["ACE_morphine", 4],
	["ACE_tourniquet", 2],
	["ACE_bloodIV_250", 2],
	["ACE_splint", 1]
];

_medicGear = [
	["ACE_fieldDressing", 60],
	["ACE_morphine", 20],
	["ACE_epinephrine", 15],
	["ACE_tourniquet", 8],
	["ACE_bloodIV_250", 16],
	["ACE_bloodIV_500", 10],
	["ACE_bloodIV_1000", 6],
	["ACE_splint", 8]
]; 

_count = 0;

{
	_x params ["_unit"];
	removeAllItems _unit;

	{
		_x params ["_item", "_amount"];
		for [{_i = 0}, {_i < _amount}, {_i = _i + 1}] do {
			_unit addItem _item;
		};
	} forEach _gear;

	if (getNumber (configfile >> "CfgVehicles" >> typeOf _x  >> "attendant") > 0) then {
		{
			_x params ["_item", "_amount"];
			for [{_i = 0}, {_i < _amount}, {_i = _i + 1}] do {
				_unit addItemToBackpack _item;
			};
		} forEach _medicGear;
	}; 

	save3DENInventory [_unit];
	_count = _count+1; 
} forEach (playableUnits + [player]);
save3DENInventory (playableUnits + [player]);

format ["Changed gear on %1 units.", _count]; 