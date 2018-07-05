/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_char_ow) == 0) {
	room_goto(room_combat);
	enter_combat("monster", irandom(1)+1);
}