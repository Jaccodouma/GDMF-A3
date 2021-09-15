// [this, 0.75] call GDMF_fnc_scaleDamage;
#include "../../script_mission.hpp"

params ["_vehicle", "_damageMultiplier"]; 

_vehicle setVariable [QGVAR(damageScale), _damageMultiplier];

_vehicle addEventHandler ["HandleDamage", {
	params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint"];

	_scale = _unit getVariable QGVAR(damageScale);
	_oldDamage = _unit getHit _selection;
	_diff = _damage - _oldDamage;

	_oldDamage + _scale * _diff
}];
