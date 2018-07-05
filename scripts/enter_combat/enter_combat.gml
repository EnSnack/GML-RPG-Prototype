/// @arg monster
/// @arg amount

var mon = argument0;
var amm = argument1;
show_debug_message(amm);

monster = instance_create_layer(0, 0, "Instances", obj_monster_combat);
switch(amm) {
	case 1:
		room_instance_add(1, 768, 500, obj_monster_combat);
		break;
	case 2:
		room_instance_add(1, 768, 400, obj_monster_combat);
		room_instance_add(1, 768, 600, obj_monster_combat);
		break;
}