// call compile preprocessFileLineNumbers "scripts\set3DENGear.sqf";

_gear = [
//	[name, amount],
	["ACE_fieldDressing", 20],
	["ACE_morphine", 4],
	["ACE_tourniquet", 2],
	["ACE_bloodIV_250", 2],
	["ACE_splint", 1],
	["ACRE_PRC343", 1]
];

{
	_x params ["_unit"];
	removeAllItemsWithMagazines _unit;
	{
		_x params ["_item", "_amount"];
		for [{_i = 0}, {_i < _amount}, {_i = _i + 1}] do {
			_unit addItem _item;
		};
	} forEach _gear;
	save3DENInventory [_unit];
	_count = _count+1; 
} forEach playableUnits;
save3DENInventory playableUnits;