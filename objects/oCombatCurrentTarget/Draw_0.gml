/// @description Insert description here
// You can write your code in this editor
var currentPlayer = oCombatController.currentPlayerTurn;
var currentTarget = currentPlayer.curTarget;

if(currentPlayer.id == obj_char_battle.id || currentPlayer.id == oCompBattleParent.id) {
	#region Basic Attack
	if(currentPlayer.state == "attack") {
			draw_sprite(sprite_index, 1, currentTarget.x, currentTarget.y-75);
			draw_text(currentTarget.x-12, currentTarget.y-75, currentTarget.curHealth);
	}
	#endregion

	#region Spell Attack
	if(currentPlayer.state == "magic" && currentTarget != 0) {
		if(array_length_1d(currentPlayer.spellCast) > 0 && currentPlayer.curSpellSelected != 0) {
			switch(currentPlayer.spellCast[4]) {
				case 0:
					draw_sprite(sprite_index, 1, currentTarget.x, currentTarget.y-75);
					draw_text(currentTarget.x-12, currentTarget.y-75, currentTarget.curHealth);
					break;
				case 1:
					draw_sprite(sprite_index, 1, currentTarget.x, currentTarget.y-75);
					draw_text(currentTarget.x-12, currentTarget.y-75, currentTarget.curHealth);
					break;
				case 2:
					draw_sprite(sprite_index, 1, currentTarget.x, currentTarget.y-75);
					draw_text(currentTarget.x-12, currentTarget.y-75, currentTarget.curHealth);
					break;
			}
		}
	}
	#endregion
}