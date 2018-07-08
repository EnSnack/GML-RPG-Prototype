/// @description Insert description here
// You can write your code in this editor
switch(obj_char_battle.state) {
	case "magic":
		draw_sprite(sBattleMenuFinger, 0, oCombatAction.x+50, fingery);
		draw_sprite(sprite_index, 0, oCombatAction.x+200, oCombatAction.y);
		break;
}