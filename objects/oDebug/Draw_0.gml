/// @description Insert description here
// You can write your code in this editor
if(oGameInit.debugmode == 1) {
	draw_set_halign(fa_center);

	if(draw) {
		draw_text(x,y,debug_info(object_get_name(current_object.object_index)));
	} else {
		draw_sprite(sCursor, -1, x, y);	
	}

	draw_set_halign(fa_left);
	draw_set_color(c_white);

	var text  = "DEBUG:\n";
		text += "Objects in room: " + string(instance_count) + "\n";
		text += "Current Object: " + string(current_object) + "\n";
		text += "Health of allies: \n"; 
		text += "Char." + string(ds_list_find_value(oCombatController.partyLeft, 0).curHealth) + "\n";
		text += "Comp." + string(ds_list_find_value(oCombatController.partyLeft, 1).curHealth) + "\n";
		text += "Health of enemies: \n"; 
		text += "1." + string(ds_list_find_value(oCombatController.partyRight, 0).curHealth) + "\n";
		text += "2." + string(ds_list_find_value(oCombatController.partyRight, 1).curHealth) + "\n";
		text += "3." + string(ds_list_find_value(oCombatController.partyRight, 2).curHealth) + "\n";
		text += "Current Turn: " + string(object_get_name(oCombatController.currentPlayerTurn.object_index)) + "\n";
		text += "A: " + string(oCombatMenu.fingerstart) + "\n";
		text += "B: " + string(oCombatMenu.fingery) + "\n";
		text += "C: " + string(oCombatMenu.fingerstart + (12 * 16)) + "\n";
		text += "D: " + string(oCombatMenu.test) + "\n";
	
	draw_text(0,0,text);
}