/// @description Insert description here
// You can write your code in this editor
switch(oCombatController.currentPlayerTurn.state) {
	case "magic":
		if(oCombatController.currentPlayerTurn.curSpellSelected == 0) {
			draw_sprite(sBattleMenuFinger, 0, oCombatAction.x+50, fingery);
			if(obj_char_battle.curSpellsLearnt > 0) {
				draw_sprite(sprite_index, 1, x, y);
				for(i = 15; i >= array_length_1d(obj_char_battle.curSpellsLearnt); i--) {
					draw_sprite(sBattleMenuBar, 0, x+1, (y-70)+(i*12));
				}
				for(j = 0; j < array_length_1d(obj_char_battle.curSpellsLearnt); j++) {
					draw_text_transformed(x-80, (y-88)+(j*12), obj_char_battle.curSpellsLearnt[j], 0.8,0.70,image_angle);
				}
			} else {
				draw_sprite(sprite_index, 0, oCombatAction.x+200, oCombatAction.y);
			}
		}
		break;
	case "skill":
		draw_sprite(sBattleMenuFinger, 0, oCombatAction.x+50, fingery);
		draw_sprite(sprite_index, 1, oCombatAction.x+200, oCombatAction.y);
		break;
}