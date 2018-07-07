/// @description Insert description here
// You can write your code in this editor
#region MCTarget
if(oCombatController.currentPlayerTurn.id == obj_char_battle.id && obj_char_battle.state == "attack") {
	draw_sprite(sprite_index, 1, obj_char_battle.curTarget.x, obj_char_battle.curTarget.y-75);
	draw_text(obj_char_battle.curTarget.x-12, obj_char_battle.curTarget.y-75, obj_char_battle.curTarget.curHealth);
}
#endregion

#region CompTarget
if(oCombatController.currentPlayerTurn.id == oCompBattleParent.id && oCompBattleParent.state == "attack") {
	draw_sprite(sprite_index, 1, obj_comp_battle.curTarget.x, obj_comp_battle.curTarget.y-75);
	draw_text(obj_comp_battle.curTarget.x-12, obj_comp_battle.curTarget.y-75, obj_comp_battle.curTarget.curHealth);
}
#endregion