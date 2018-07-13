/// @description Insert description here
// You can write your code in this editor
draw_sprite(spSprite, image_index, x, y);
draw_text(x-6, y-11, spVal);

if (image_index+image_speed >= sprite_get_number(s_spHeal)) {
	instance_destroy();
}