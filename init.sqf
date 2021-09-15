/*	
	██████   █████  ██████  ██  ██████  ███████ 
	██   ██ ██   ██ ██   ██ ██ ██    ██ ██      
	██████  ███████ ██   ██ ██ ██    ██ ███████ 
	██   ██ ██   ██ ██   ██ ██ ██    ██      ██ 
	██   ██ ██   ██ ██████  ██  ██████  ███████
*/
// Whether to give everyone Short Range Radios (AN/PRC-343)
_Everyone_Has_Shortrange = true; 

/*
	Who to give Long Range Radios to.
		0 - None
		1 - Squad leads 
		2 - Squad leads, medics & engineers
		3 - Everyone
*/
_Give_LR_To = 2; 

// Short range radio type, default is "ACRE_PRC343" (ACRE_PRC343)
_SRR_Type = "ACRE_PRC343";

// Long range radio type, default is "ACRE_PRC152" (AN/PRC-152)
_LRR_Type = "ACRE_PRC152"; 

/*
	The channels available on Long Range Radios
	Just change the text if needed, don't add or remove rows. 
*/
_LRChannels = [
	"PLTNET 1", 
	"PLTNET 2", 
	"PLTNET 3", 
	"CAS", 
	"FIRES", 
	"MEDI"
];


// Do not touch!
[_Everyone_Has_Shortrange, _SRR_Type, _Give_LR_To, _LRR_Type, _LRChannels] call GDMF_fnc_init;