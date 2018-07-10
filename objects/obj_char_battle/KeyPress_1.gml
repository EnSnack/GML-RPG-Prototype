/// @description Insert description here
// You can write your code in this editor
if(active) {
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
					curTarget = ds_list_find_value(oCombatController.partyRight, 0);
					io_clear();
					break;
				case 1:
					state = "magic";
					curTarget = ds_list_find_value(oCombatController.partyRight, 0);
					io_clear();
					break;
				case 2:
					state = "skill";
					curTarget = ds_list_find_value(oCombatController.partyRight, 0);
					io_clear();
					break;
				case 3:
					state = "run";
					io_clear();
					break;
			
			}
			oCombatAction.mcActChoice = oCombatAction.actChoice;
			oCombatAction.actChoice = 0;
		}
	}

	if(state == "attack") {
		if(keyboard_check_pressed(combat_inputs[1])) {
			state = "idle";	
		}
		if(keyboard_check_pressed(combat_inputs[3]) && curTarget < ds_list_find_value(oCombatController.partyRight, ds_list_size(oCombatController.partyRight)-1)) {
			curTarget++;	
		} else if(keyboard_check_pressed(combat_inputs[2]) && curTarget > ds_list_find_value(oCombatController.partyRight, 0)) {
			curTarget--;
		}
		if (keyboard_check_pressed(combat_inputs[0])) {
			curTarget.curHealth = curTarget.curHealth - curDamage;
			io_clear();
			nextTurn();
		}
	}
	
	if(state == "magic") {
		if(keyboard_check_pressed(combat_inputs[1])) {
			state = "idle";	
		}
		if(keyboard_check_pressed(combat_inputs[2]) && oCombatMenu.fingery > 300) {
			oCombatMenu.fingery = oCombatMenu.fingery - 12;	
			curSpell--;
		} else if(keyboard_check_pressed(combat_inputs[3]) && oCombatMenu.fingery < 480) {
			oCombatMenu.fingery = oCombatMenu.fingery + 12;	
			curSpell++;
		}
		if (keyboard_check_pressed(combat_inputs[0]) && curSpell < array_length_1d(curSpellsLearnt)) {
			show_debug_message(curSpellsLearnt[curSpell]);
		}
	}
	
	if(state == "skill") {
		if(keyboard_check_pressed(combat_inputs[1])) {
			state = "idle";	
		}
		if(keyboard_check_pressed(combat_inputs[2]) && oCombatMenu.fingery > 300) {
			oCombatMenu.fingery = oCombatMenu.fingery - 12;
			curSpell--;
		} else if(keyboard_check_pressed(combat_inputs[3]) && oCombatMenu.fingery < 480) {
			oCombatMenu.fingery = oCombatMenu.fingery + 12;
			curSpell++;
		}
		if (keyboard_check_pressed(combat_inputs[0])) {
			show_debug_message(curSpellsLearnt[curSpell]);
		}
	}
}