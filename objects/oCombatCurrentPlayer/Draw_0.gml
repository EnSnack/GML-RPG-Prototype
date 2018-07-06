/// @description Insert description here
// You can write your code in this editor
if(oCombatController.currentPlayerTurn > 100000 && oCombatController.currentTeamTurn != 0) {
	draw_sprite(sprite_index, 0, oCombatController.currentPlayerTurn.x, oCombatController.currentPlayerTurn.y-75);
	draw_text(oCombatController.currentPlayerTurn.x-12, oCombatController.currentPlayerTurn.y-75, oCombatController.currentPlayerTurn.curHealth);
}