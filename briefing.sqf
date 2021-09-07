/**
	https://community.bistudio.com/wiki/createDiaryRecord
	Click "Show text" at the top of this page for a list with supported tags and how to use them
*/

// Situation text, describes what's going on
_situation = format ["
We're tasked with finding and destroying three weapons caches, while clearing the compounds they're in.
<br/>
<br/>Most compounds in the area have enemies inside it. 
<br/>There are no civilians in the area. 
"]; 

// Describe friendly forces (Also any notes on our available gear)
_friendlyForces = format ["
One or two US army squads. 
<br/>There's jeeps available for transport. All vehicles are loaded with ammo and medical supplies.
<br/>Our gear is fairly barebones. We have to rely on proper teamwork and strategy for this mission. 
"]; 

// Describe enemy forces
_enemyForces = format ["
Our enemies are poorly armed and trained insurgents. They mainly have Lee Enfields and some AK's. They have no armoured vehicles or AT capabilities.
"]; 

// Describe the mission and what you want to achieve
_mission = format ["
Find and destroy ammo caches at the following locations: 
<br/> - Ahmad Golam (<marker name='obj_fox'>Obj Fox</marker>)
<br/> - Darshag (<marker name='obj_mike'>Obj Mike</marker>)
<br/> - Narmaki (<marker name='obj_king'>Obj King</marker>)
<br/>
<br/>After the caches have been blown up, prepare for extraction by clearing the area, or by moving away from enemies. 
"]; 

// Mission notes, technical details, hints etc. 
_notes = format ["
The ending is triggered by destroying all caches and having no enemies within a certain distance from all units. 
"];

/////////////////////////////////////////////////////////////////////////////////////
// DON'T TOUCH BELOW HERE (unless you know what you're doing)
/////////////////////////////////////////////////////////////////////////////////////

_clrBlu = ([getArray (configFile >> "CfgMarkerColors" >> "ColorBLUFOR" >> "color")] call BIS_fnc_colorConfigToRGBA) call BIS_fnc_colorRGBtoHTML;
_clrOpf = ([getArray (configFile >> "CfgMarkerColors" >> "ColorOPFOR" >> "color")] call BIS_fnc_colorConfigToRGBA) call BIS_fnc_colorRGBtoHTML;
_text = format ["
<font size='20' face='PuristaBold' color='#faf38c'>Situation</font>
<br/>%1
<br/>
<br/><font size='20' face='PuristaBold' color='%5'>Friendly Forces</font>
<br/>%2
<br/>
<br/><font size='20' face='PuristaBold' color='%6'>Enemy Forces</font>
<br/>%3
<br/>
<br/><font size='20' face='PuristaBold' color='#faf38c'>Mission</font>
<br/>%4
<br/>
<br/><font size='20' face='PuristaBold' color='#545454'>Notes</font>
<br/><font color='#545454'>%7</font>
", _situation, _friendlyForces, _enemyForces, _mission, _clrBlu, _clrOpf, _notes];

player createDiaryRecord ["Diary", [
	"Operation",
	_text
],
taskNull, "", false]; 