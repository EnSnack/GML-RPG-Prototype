/// @description Insert description here
// You can write your code in this editor
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
	draw_sprite(sBattleAction, 0, x-65, y-60);
	draw_sprite(sBattleAction, 1, x-25, y-60);
	draw_sprite(sBattleAction, 2, x+15, y-60);
	draw_sprite(sBattleAction, 3, x+55, y-60);
}