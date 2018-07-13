/// @description Insert description here
// You can write your code in this editor
if(mcActChoice == noone || compActChoice == noone) {
	object_set_visible(self,true);
	if(oCombatController.currentTeamTurn == 0 && oCombatController.currentPlayerTurn.state == "idle") {
		switch(actChoice) {
			case 0:
				draw_sprite(sArrow, 2, x-65, y-105);
				break;
			case 1:
				draw_sprite(sArrow, 2, x-25, y-105);
				break;
			case 2:
				draw_sprite(sArrow, 2, x+15, y-105);
				break;
			case 3:
				draw_sprite(sArrow, 2, x+55, y-105);
				break;
		}
		draw_sprite(sprite_index, 0, x-80, y-75);
		draw_sprite(sprite_index, 1, x-40, y-75);
		draw_sprite(sprite_index, 2, x, y-75);
		draw_sprite(sprite_index, 3, x+40, y-75);
	}
}