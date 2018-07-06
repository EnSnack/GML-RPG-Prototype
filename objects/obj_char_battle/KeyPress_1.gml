/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(combat_inputs[0]) && state == "idle") {
	state = "attack";
	curTarget = ds_list_find_value(oCombatController.partyRight, 0);
	io_clear();
    //oCombatController.monster1.curHealth = oCombatController.monster1.curHealth - 5;
	//nextTurn();
}
if(state == "attack") {
	if(keyboard_check_pressed(combat_inputs[3]) && curTarget < ds_list_find_value(oCombatController.partyRight, ds_list_size(oCombatController.partyRight)-1)) {
		curTarget++;	
		show_debug_message(curTarget);
	} else if(keyboard_check_pressed(combat_inputs[2]) && curTarget > ds_list_find_value(oCombatController.partyRight, 0)) {
		curTarget--;
		show_debug_message(curTarget);
	}
	if (keyboard_check_pressed(combat_inputs[0])) {
		curTarget.curHealth = curTarget.curHealth - curDamage;
		state = "idle";
		nextTurn();
	}
}