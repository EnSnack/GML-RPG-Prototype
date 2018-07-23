/// @description Insert description here
// You can write your code in this editor
draw_text(200, 200, points);
if(clicked == noone) {
	draw_sprite(sSpellThingTest,0,room_width/2,room_height/2);
	if(keyboard_check_pressed(clickLeft)) {
		clicked = true;
	} else if(keyboard_check_pressed(clickRight)) {
		clicked = false;
	}
}
if(clicked != noone && clicked) {
	draw_sprite(sSpellThingTest,1,room_width/2,room_height/2);
	if(keyboard_check_pressed(clickRight)) {
		clicked = !clicked;
		if(points < 100) {
			points += 10;
		}
		if(points > 100) {
			points = 100;	
		}
	}
} else if (clicked != noone && !clicked) {
	draw_sprite(sSpellThingTest,2,room_width/2,room_height/2);
	if(keyboard_check_pressed(clickLeft)) {
		clicked = !clicked;
		if(points < 100) {
			points += 10;
		}
		if(points > 100) {
			points = 100;	
		}
	}
}
if(points > 0) {
	for(i = 0; i < points/10; i++) {
		draw_sprite(sSpellThingTest,3,room_width/2,489-(22*i));
	}
}