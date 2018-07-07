/// @description Insert description here
// You can write your code in this editor
if(active) {
	if(keyboard_check_pressed(combat_inputs[4]) && state == "idle" && oCombatAction.actChoice > 0) {
		oCombatAction.actChoice--;	
	} else if(keyboard_check_pressed(combat_inputs[5]) && state == "idle" && oCombatAction.actChoice < 3) {
		oCombatAction.actChoice++;
	} else if(keyboard_check_pressed(combat_inputs[4]) && state == "idle" && oCombatAction.actChoice == 0) {
		oCombatAction.actChoice = 4;	
	} else if(keyboard_check_pressed(combat_inputs[5]) && state == "idle" && oCombatAction.actChoice == 4) {
		oCombatAction.actChoice = 0;	
	}

	if (keyboard_check_pressed(combat_inputs[0]) && state == "idle" && oCombatAction.actChoice == 0) {
		state = "attack";
		curTarget = ds_list_find_value(oCombatController.partyRight, 0);
		io_clear();
	}


	if(state == "attack") {
		if(keyboard_check_pressed(combat_inputs[3]) && curTarget < ds_list_find_value(oCombatController.partyRight, ds_list_size(oCombatController.partyRight)-1)) {
			curTarget++;	
		} else if(keyboard_check_pressed(combat_inputs[2]) && curTarget > ds_list_find_value(oCombatController.partyRight, 0)) {
			curTarget--;
		}
		if (keyboard_check_pressed(combat_inputs[0])) {
			curTarget.curHealth = curTarget.curHealth - curDamage;
			nextTurn();
		}
	}
}