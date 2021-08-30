class GD_Loadouts {
	class Weapons {
		// if true, will apply a random loadout (specialist role if available)
		applyRandom = false; 

		// Classname can be anything, just not the same
		class Rifleman_M16A1 {
			name = "M16A1";

			// Weapon classname 
			weapon = "UK3CB_M16A1"; 

			// Things attached to the weapon, including a magazine
			attachments[] = {};

			// Magazines, first one gets loaded into the weapon
			magazines[] = {"UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45"}; 
			
			// Gear, for other items 
			gear[] = {};
			
			// Roles allowed to use it, if empty it's any
			allowedRoles[] = {};
		};
		class Rifleman_M16A1_LSW {
			name = "M16A1 LSW";
			weapon = "UK3CB_M16A1_LSW"; 
			attachments[] = {};
			magazines[] = {"UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45"}; 
			gear[] = {};
			allowedRoles[] = {};
		};
		class Rifleman_M16A2 {
			name = "M16A2";
			weapon = "UK3CB_M16A2"; 
			attachments[] = {};
			magazines[] = {"UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45"}; 
			gear[] = {};
			allowedRoles[] = {};
		};
		class MG_M60 {
			name = "M60";
			weapon = "UK3CB_M60"; 
			attachments[] = {};
			magazines[] = {"UK3CB_M60_100rnd_762x51", "UK3CB_M60_100rnd_762x51", "UK3CB_M60_100rnd_762x51", "UK3CB_M60_100rnd_762x51"}; 
			gear[] = {};
			allowedRoles[] = {"MG"};
		};
	};
};