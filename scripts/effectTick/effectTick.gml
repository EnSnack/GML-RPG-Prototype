var characters = array_create(0);
var buffedChar = array_create(0);
var totalBuffs = array_create(0);
var leftParty = oCombatController.partyLeft;
var rightParty = oCombatController.partyRight;

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

for(i = 0; i < array_length_1d(buffedChar); i++) {
	if(buffedChar[i] != 0) {
		for(j = 0; j < array_height_2d(buffedChar[i].curBuffs); j++) {
			if(buffedChar[i].curBuffs[j, 1] >= 1) {
				show_debug_message("==== START (ONE) ====");
				show_debug_message("buffedChars before: " + string(buffedChar[i]));
				show_debug_message("buffedChars Current Buffs before: " + string(buffedChar[i].curBuffs));
				show_debug_message("totalBuffs before: " + string(totalBuffs));
				show_debug_message("j (ONE): " + string(j));
				totalBuffs[j, 0] = buffedChar[i].curBuffs[j, 0];
				totalBuffs[j, 1] = buffedChar[i].curBuffs[j, 1];
				buffedChar[i].curBuffs[j, 1] = totalBuffs[j, 1] - 1;
				show_debug_message("buffedChars after: " + string(buffedChar[i]));
				show_debug_message("buffedChars Current Buffs after: " + string(buffedChar[i].curBuffs));
				show_debug_message("totalBuffs after: " + string(totalBuffs));
				show_debug_message("==== END (ONE) ====");
			} else {
				show_debug_message("buffedChars Current Buffs before: " + string(buffedChar[i].curBuffs[j, 1]));
				show_debug_message("j before: " + string(j));
				j = j + 1;
				show_debug_message("j after: " + string(j));
				show_debug_message("buffedChars Current Buffs after: " + string(buffedChar[i].curBuffs[j, 1]));
			}
			//buffedChar[i].curBuffs = totalBuffs;
		}
	}
}

//show_debug_message(totalBuffs);
//show_debug_message(buffedChar[0].curBuffs);