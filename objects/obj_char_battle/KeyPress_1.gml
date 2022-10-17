/// @description Insert description here
// You can write your code in this editor

// Keys
var _select     = keyboard_check_pressed(combat_inputs[0])
var _back       = keyboard_check_pressed(combat_inputs[1])
var _upClick    = keyboard_check_pressed(combat_inputs[2])
var _downClick  = keyboard_check_pressed(combat_inputs[3])
var _leftClick  = keyboard_check_pressed(combat_inputs[4])
var _rightClick = keyboard_check_pressed(combat_inputs[5])

/// MENU CONTROL
if (state == "idle") {
	if(_leftClick) {
		_choice--;	
	} 
	if(_rightClick) {
		_choice++;	
	}
	oCombatAction.actChoice   = _choice;
	oCombatAction.mcActChoice = _choice;
	if (_select) {
		switch(_choice) {
			case 0:
				state = "attack";
				instance_create_layer(0,0,"Technical",oCombatCurrentTarget);
				break;
			case 1:
				state = "magic";
				instance_create_layer(0,0,"Technical",oCombatCurrentTarget);
				instance_create_layer(x,y,"Technical",oCombatMenu)
				break;
			case 2:
				//state = "skill";
				break;
			case 3:
				//state = "run";
				break;
		}
	}
}
if(state == "attack") {
	if(_back) {
		curTarget = 0;
		state = "idle";	
	}
}