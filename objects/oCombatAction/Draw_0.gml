/// @description Insert description here
// You can write your code in this editor
if(oCombatController.currentTeamTurn == 0 && obj_char_battle.state == "idle") {
	switch(actChoice) {
		case 0:
			draw_sprite(sprite_arrow, 2, oCombatController.currentPlayerTurn.x-65, oCombatController.currentPlayerTurn.y-105);
			break;
		case 1:
			draw_sprite(sprite_arrow, 2, oCombatController.currentPlayerTurn.x-25, oCombatController.currentPlayerTurn.y-105);
			break;
		case 2:
			draw_sprite(sprite_arrow, 2, oCombatController.currentPlayerTurn.x+15, oCombatController.currentPlayerTurn.y-105);
			break;
		case 3:
			draw_sprite(sprite_arrow, 2, oCombatController.currentPlayerTurn.x+55, oCombatController.currentPlayerTurn.y-105);
			break;
	}
	draw_sprite(sprite_index, 0, oCombatController.currentPlayerTurn.x-80, oCombatController.currentPlayerTurn.y-75);
	draw_sprite(sprite_index, 1, oCombatController.currentPlayerTurn.x-40, oCombatController.currentPlayerTurn.y-75);
	draw_sprite(sprite_index, 2, oCombatController.currentPlayerTurn.x, oCombatController.currentPlayerTurn.y-75);
	draw_sprite(sprite_index, 3, oCombatController.currentPlayerTurn.x+40, oCombatController.currentPlayerTurn.y-75);
}