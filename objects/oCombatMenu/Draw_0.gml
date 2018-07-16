/// @description Insert description here
// You can write your code in this editor
if(oCombatController.currentTeamTurn == 0 && player.active) {
	switch(pState) {
		case "magic":
			if(player.curSpellsLearnt > 0 && player.curMagicSelected == 0) {
				draw_sprite(sBattleMenuFinger, 0, oCombatAction.x+50, fingery);
				draw_sprite(sprite_index, 0, x, y);
				for(i = 15; i >= array_length_1d(player.curSpellsLearnt); i--) {
					draw_sprite(sBattleMenuBar, 0, x+1, (y-70)+(i*12));
				}
				for(i = 0; i < array_length_1d(player.curSpellsLearnt); i++) {
					draw_text_transformed(x-80, (y-88)+(i*12), player.curSpellsLearnt[i], 0.8,0.70,image_angle);
				}
			}
		break;
		case "summon":
			if(player.curSummonsLearnt > 0) {
				draw_sprite(sBattleMenuFinger, 0, oCombatAction.x+50, fingery);
				draw_sprite(sprite_index, 1, x, y);
				for(i = 15; i >= array_length_1d(player.curSummonsLearnt); i--) {
					draw_sprite(sBattleMenuBar, 0, x+1, (y-70)+(i*12));
				}
				for(i = 0; i < array_length_1d(player.curSummonsLearnt); i++) {
					draw_text_transformed(x-80, (y-88)+(i*12), player.curSummonsLearnt[i], 0.8,0.70,image_angle);
				}
			}
		break;
		case "skill":
			if(player.curSkillsLearnt > 0) {
				draw_sprite(sBattleMenuFinger, 0, oCombatAction.x+50, fingery);
				draw_sprite(sprite_index, 2, x, y);
				for(i = 15; i >= array_length_1d(player.curSkillsLearnt); i--) {
					draw_sprite(sBattleMenuBar, 0, x+1, (y-70)+(i*12));
				}
				for(i = 0; i < array_length_1d(player.curSkillsLearnt); i++) {
					draw_text_transformed(x-80, (y-88)+(i*12), player.curSkillsLearnt[i], 0.8,0.70,image_angle);
				}
			}
		break;
	}
}