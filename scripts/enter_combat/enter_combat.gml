/// @arg monster
/// @arg amount
/// @arg state

var mon = argument0;
var amm = argument1;

room_goto(room_combat);

switch(amm) {
	case 1:
		instance_create_layer(768, 100, "Instances", obj_monster_combat);
		show_debug_message(obj_monster_combat.x);
}