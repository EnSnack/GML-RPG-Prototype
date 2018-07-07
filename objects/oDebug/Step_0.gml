/// @description Insert description here
// You can write your code in this editor
if(oGameInit.debugmode == 1) {
	x = mouse_x;
	y = mouse_y;
	if (number_object <= instance_count) {
		debug_object[number_object] = instance_id_get(number_object);
	
		if(place_meeting(x,y,debug_object[number_object])) {
			current_object = debug_object[number_object];	
			draw = true;
		}
		else {
			number_object++;
			draw = false;
		}
	}
	else {
		number_object = 0;	
	}
}