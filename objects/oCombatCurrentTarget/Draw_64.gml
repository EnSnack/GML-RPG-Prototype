/// @description Insert description here
// You can write your code in this editor
var currentPlayer = oCombatController.currentPlayerTurn;
var currentTarget = currentPlayer.curTarget;

if(currentPlayer.id == obj_char_battle.id || currentPlayer.id == oCompBattleParent.id) {
	if(currentPlayer.state == "idle" || currentPlayer.state == "end") {
		instance_destroy();	
	}
	
	#region Basic Attack
	if(currentPlayer.state == "attack") {
			draw_sprite(sArrow, 1, currentTarget.x, currentTarget.y-75);
			draw_text(currentTarget.x-12, currentTarget.y-75, currentTarget.curHealth);
	}
	#endregion

	#region Spell Attack
	if(currentPlayer.state == "magic" && currentTarget != 0) {
		if(array_length_1d(currentPlayer.spellCast) > 0 && currentPlayer.curMagicSelected != 0) {
			if(array_length_1d(currentTarget) > 1) {
					for(i = 0; i < array_length_1d(currentTarget); i++) {
						draw_sprite(sArrow, 1, currentTarget[i].x, currentTarget[i].y-75);
						draw_text(currentTarget[i].x-12, currentTarget[i].y-75, currentTarget[i].curHealth);
					}
			} else {
					draw_sprite(sArrow, 1, currentTarget.x, currentTarget.y-75);
					draw_text(currentTarget.x-12, currentTarget.y-75, currentTarget.curHealth);
				}
			}
		}
	#endregion
}