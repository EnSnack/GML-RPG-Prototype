/// @arg monster
/// @arg amount

var mon = argument0;
var amm = argument1;

mc = instance_create_layer(220, 415, "Characters", obj_char_battle);
comp = instance_create_layer(190, 575, "Characters", obj_comp_battle);

switch(amm) {
	case 1:
		monster = instance_create_layer(768, 500, "Enemies", obj_monster_battle);
		ds_list_add(oCombatController.partyRight, monster);
		break;
	case 2:
		monster1 = instance_create_layer(768, 400, "Enemies", obj_monster_battle);
		monster2 = instance_create_layer(768, 600, "Enemies", obj_monster_battle);
		ds_list_add(oCombatController.partyRight, monster1);
		ds_list_add(oCombatController.partyRight, monster2);
		break;
	case 3:
		monster1 = instance_create_layer(768, 400, "Enemies", obj_monster_battle);
		monster2 = instance_create_layer(768, 500, "Enemies", obj_monster_battle);
		monster3 = instance_create_layer(768, 600, "Enemies", obj_monster_battle);
		ds_list_add(oCombatController.partyRight, monster1);
		ds_list_add(oCombatController.partyRight, monster2);
		ds_list_add(oCombatController.partyRight, monster3);
		break;
}

//oCombatController.partyLeft[0] = mc;
//oCombatController.partyLeft[1] = comp;

ds_list_add(oCombatController.partyLeft, mc);
ds_list_add(oCombatController.partyLeft, comp);