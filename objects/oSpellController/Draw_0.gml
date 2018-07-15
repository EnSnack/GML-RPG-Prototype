/// @description Insert description here
// You can write your code in this editor
if(spSprite != noone) {
	if(spTrail == "mine") {
		draw_sprite(spSprite, image_index, x, y);
		draw_text(x-6, y-11, spVal);
	}
	if(spTrail == "missile") {
		draw_sprite(spSprite, image_index, missilex, missiley);
		if(missilex < target.x - target.sprite_xoffset) {
			if(image_index <= 5) {
				missilex = lerp(missilex, target.x, 0.075);
				missiley = lerp(missiley, target.y, 0.075);
			} 
			else if(image_index > 5) {
					image_index = 0;	
			}
		}
		else if(missilex >= target.x - target.sprite_xoffset && image_index < 5) {
			image_speed = 0.5;
			image_index = 6;
		}
	}
}

if (image_index+image_speed >= sprite_get_number(spSprite)) {
	instance_destroy();
}