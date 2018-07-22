/// @description Insert description here
// You can write your code in this editor
draw_sprite(sFightThingTest,0,target.x,target.y);
draw_sprite(sFightThingTest,1,target.x-24,arrowy);

if(arrowy < target.y+56 && !clicked) {
	arrowy += arrowspeed;	
}

if(keyboard_check_pressed(click) && !clicked) {
	clicked = !clicked;	
}

if(done && result != noone) {
	draw_text(target.x-80,arrowy,result);
}