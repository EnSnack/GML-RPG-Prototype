/// @description Insert description here
// You can write your code in this editor
if(spSprite != noone) {
	if(spTrail == "mine") {
		if(array_length_1d(target) > 1) {
			for(i = 0; i < array_length_1d(target); i++) {
				draw_sprite(spSprite, image_index, target[i].x, target[i].y);
				draw_text(x-6, y-11, spVal);
			}
		}
		else {
			draw_sprite(spSprite, image_index, target.x, target.y);
			draw_text(x-6, y-11, spVal);
		}
	}
	if(spTrail == "missile") {
		draw_sprite_ext(spSprite,image_index,missilex,missiley,1,1,rotation,c_white,1);
		if(missilex < target.x - target.sprite_xoffset) {
			if(image_index <= 5) {
				missilex += missilespeedx;
				missiley += missilespeedy;
			} 
			else if(image_index > 5) {
					image_index = 0;	
			}
		}
		else if(missilex >= target.x - target.sprite_xoffset && image_index <= 5) {
			rotation = 0;
			image_speed = 0.5;
			image_index = 6;
		}
	}
}

if (image_index+image_speed >= sprite_get_number(spSprite)) {
	player.state = "end";
	instance_destroy();
}