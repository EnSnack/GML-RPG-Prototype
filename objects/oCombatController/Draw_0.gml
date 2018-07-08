/// @description Win condition, change?
if(ds_list_size(partyRight) == 0) {
	draw_text(room_width/2, room_height/2, "You win!");
}
if(obj_monster_battle.isDmgDealt = true) {
	draw_text(irandom_range(obj_monster_battle.curTarget.x+5, obj_monster_battle.curTarget.x+40), irandom_range(obj_monster_battle.curTarget.y, obj_monster_battle.curTarget.y+20), obj_monster_battle.dmgDealt);	
}