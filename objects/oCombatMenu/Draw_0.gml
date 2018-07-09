/// @description Insert description here
// You can write your code in this editor
switch(obj_char_battle.state) {
	case "magic":
		if(obj_char_battle.curSpellsLearnt > 0) {
			draw_sprite(sprite_index, 1, oCombatAction.x+200, oCombatAction.y);
			for(i = 0; i < 16; i++) {
					
			}
		} else {
			draw_sprite(sBattleMenuFinger, 0, oCombatAction.x+50, fingery);
			draw_sprite(sprite_index, 0, oCombatAction.x+200, oCombatAction.y);
		}
		break;
	case "skill":
		draw_sprite(sBattleMenuFinger, 0, oCombatAction.x+50, fingery);
		draw_sprite(sprite_index, 1, oCombatAction.x+200, oCombatAction.y);
		break;
}