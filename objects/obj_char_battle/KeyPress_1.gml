/// @description Insert description here
// You can write your code in this editor
if(active) {
	#region Idle State
	if(state == "idle") {
		if(keyboard_check_pressed(combat_inputs[4]) && oCombatAction.actChoice > 0) {
			oCombatAction.actChoice--;	
		} else if(keyboard_check_pressed(combat_inputs[5]) && oCombatAction.actChoice < 3) {
			oCombatAction.actChoice++;
		} else if(keyboard_check_pressed(combat_inputs[4]) && oCombatAction.actChoice == 0) {
			oCombatAction.actChoice = 3;	
		} else if(keyboard_check_pressed(combat_inputs[5]) && oCombatAction.actChoice == 3) {
			oCombatAction.actChoice = 0;	
		}

		if (keyboard_check_pressed(combat_inputs[0])) {
			switch(oCombatAction.actChoice) {
				case 0:
					state = "attack";
					curTarget = ds_list_find_value(rightParty, 0);
					io_clear();
					break;
				case 1:
					state = "magic";
					io_clear();
					break;
				case 2:
					state = "skill";
					io_clear();
					break;
				case 3:
					state = "run";
					io_clear();
					break;
			
			}
			oCombatAction.mcActChoice = oCombatAction.actChoice;
		}
	}
	#endregion

	#region Attack State
	if(state == "attack") {
		if(keyboard_check_pressed(combat_inputs[1])) {
			curTarget = 0;
			state = "idle";	
		}
		if(keyboard_check_pressed(combat_inputs[3]) && curTarget < ds_list_find_value(rightParty, ds_list_size(rightParty)-1)) {
			curTarget++;	
		} else if(keyboard_check_pressed(combat_inputs[2]) && curTarget > ds_list_find_value(rightParty, 0)) {
			curTarget--;
		}
		if (keyboard_check_pressed(combat_inputs[0])) {
			curTarget.curHealth = curTarget.curHealth - curDamage;
			io_clear();
			nextTurn();
		}
	}
	#endregion
	
	#region Magic State
	if(state == "magic") {
		if(keyboard_check_pressed(combat_inputs[1])) {
			state = "idle";	
		}
		if(keyboard_check_pressed(combat_inputs[1]) && curSpellSelected != 0) {
			state = "magic";
			curSpellSelected = 0;
			curTarget = 0;
		}
		if (keyboard_check_pressed(combat_inputs[0]) && curSpellSelected != 0) {
			instance_create_layer(0,0,"Technical",oSpellController);
		}
		if(curSpellSelected == 0) {
			if(keyboard_check_pressed(combat_inputs[2]) && oCombatMenu.fingery > 300) {
				oCombatMenu.fingery = oCombatMenu.fingery - 12;	
				curSpell--;
			} else if(keyboard_check_pressed(combat_inputs[3]) && oCombatMenu.fingery < 480) {
				oCombatMenu.fingery = oCombatMenu.fingery + 12;	
				curSpell++;
			}
		} else {
			switch(spellCast[TARGET-1]) {
				case 0:
					if(keyboard_check_pressed(combat_inputs[2]) && curTarget > ds_list_find_value(leftParty, 0)) {
						curTarget--;
					} else if(keyboard_check_pressed(combat_inputs[3]) && curTarget < ds_list_find_value(leftParty, ds_list_size(leftParty)-1)) {
						curTarget++;
					}
					break;
				case 2:
					if(keyboard_check_pressed(combat_inputs[3]) && curTarget < ds_list_find_value(rightParty, ds_list_size(rightParty)-1)) {
						curTarget++;	
					} else if(keyboard_check_pressed(combat_inputs[2]) && curTarget > ds_list_find_value(rightParty, 0)) {
						curTarget--;
					}
					break;
			}
		}
		if (keyboard_check_pressed(combat_inputs[0]) && curSpell < array_length_1d(curSpellsLearnt) && curSpellSelected == 0) {
			curSpellSelected = curSpell+1;
			spellCast = spellDB(curSpellsLearnt[curSpellSelected-1], 0);
			io_clear();
			switch(spellCast[TARGET-1]) {
				case 0:
					curTarget = ds_list_find_value(leftParty, 0);
					break;
				case 1:
					for(i = 0; i < ds_list_size(leftParty); i++) {
						curTarget[i] = ds_list_find_value(leftParty, i);
					}
					break;
				case 2:
					curTarget = ds_list_find_value(rightParty, 0);				
					break;
				case 3:
					for(i = 0; i < ds_list_size(rightParty); i++) {
						curTarget[i] = ds_list_find_value(rightParty, i);
					}
					break;
				case 4:
					for(i = 0; i < ds_list_size(leftParty); i++) {
						curTarget[i] = ds_list_find_value(leftParty, i);
					}
					for(i = ds_list_size(leftParty); i < ds_list_size(leftParty)+ds_list_size(rightParty); i++) {
						curTarget[i] = ds_list_find_value(rightParty, (i+1)-ds_list_size(rightParty));
					}
					break;
			}
		}
	}
	#endregion
}