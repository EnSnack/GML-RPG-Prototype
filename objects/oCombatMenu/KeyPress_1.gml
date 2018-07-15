/// @description Insert description here
// You can write your code in this editor
if(oCombatController.currentTeamTurn == 0 && player.active && player.curMagicSelected == 0 && player.state == "magic" || player.state == "skill" || player.state == "summon") {
	if(keyboard_check_pressed(player.combat_inputs[1])) {
		player.state = "idle";
	}	
	if(keyboard_check_pressed(player.combat_inputs[2]) && fingery > y-80) {
		fingery = fingery - 12;	
		player.curSpell--;
	} else if(keyboard_check_pressed(player.combat_inputs[3]) && fingery < y+100) {
		fingery = fingery + 12;	
		player.curSpell++;
	}
	switch(pState) {
		case "magic":
			if(keyboard_check_pressed(player.combat_inputs[4])) {
				player.state = "skill";
			}
			if(keyboard_check_pressed(player.combat_inputs[5])) {
				player.state = "summon";	
			}
		break;
		case "summon":
			if(keyboard_check_pressed(player.combat_inputs[4])) {
				player.state = "magic";
			}
			if(keyboard_check_pressed(player.combat_inputs[5])) {
				player.state = "skill";
			}
		break;
		case "skill":
			if(keyboard_check_pressed(player.combat_inputs[4])) {
				player.state = "summon";
			}
			if(keyboard_check_pressed(player.combat_inputs[5])) {
				player.state = "magic";
			}
		break;
	}
}