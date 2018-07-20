var characters   = array_create(0);
var buffedChar   = array_create(0);
var debuffedChar = array_create(0);
var totalBuffs   = array_create(0);
var totalDebuffs = array_create(0);
var invisb       = 0;
var invisd       = 0;
var leftParty    = oCombatController.partyLeft;
var rightParty   = oCombatController.partyRight;

for(i = 0; i < ds_list_size(leftParty); i++) {
	characters[i] = ds_list_find_value(leftParty, i);
}
for(i = ds_list_size(leftParty); i < ds_list_size(leftParty)+ds_list_size(rightParty); i++) {
	characters[i] = ds_list_find_value(rightParty, (i+1)-ds_list_size(rightParty));
}

for(i = 0; i < array_length_1d(characters); i++) {
	if(array_height_2d(characters[i].curBuffs) > 0) {
		buffedChar[i] = characters[i];
	}
}

for(i = 0; i < array_length_1d(characters); i++) {
	if(array_height_2d(characters[i].curDebuffs) > 0) {
		debuffedChar[i] = characters[i];
	}
}

for(i = 0; i < array_length_1d(buffedChar); i++) {
	if(buffedChar[i] != 0) {
		invisb = 0;
		for(j = 0; j < array_height_2d(buffedChar[i].curBuffs); j++) {
			if(buffedChar[i].curBuffs[j, 1] > 1) {
				totalBuffs[j-invisb, 0] = buffedChar[i].curBuffs[j, 0];
				totalBuffs[j-invisb, 1] = buffedChar[i].curBuffs[j, 1] - 1;
			}
			else {
				invisb++;
				continue;	
			}
		}		
		buffedChar[i].curBuffs = totalBuffs;
	}
}

for(i = 0; i < array_length_1d(debuffedChar); i++) {
	if(debuffedChar[i] != 0) {
		invisd = 0;
		for(j = 0; j < array_height_2d(debuffedChar[i].curDebuffs); j++) {
			if(debuffedChar[i].curDebuffs[j, 1] > 1) {
				totalDebuffs[j-invisd, 0] = debuffedChar[i].curDebuffs[j, 0];
				totalDebuffs[j-invisd, 1] = debuffedChar[i].curDebuffs[j, 1] - 1;
			}
			else {
				invisd++;
				continue;	
			}
		}		
		debuffedChar[i].curDebuffs = totalDebuffs;
	}
}