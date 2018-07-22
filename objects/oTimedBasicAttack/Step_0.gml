/// @description Insert description here
// You can write your code in this editor
if(arrowy <= target.y+56 && !done && clicked) {
	var timedScore = arrowy;
	if(timedScore < target.y-16) {
		result = 0.5;	
	} else if(timedScore < target.y+12) {
		result = 1;	
	} else if(timedScore < target.y+28) {
		result = 1.5;	
	} else {
		result = 0.5;
	}
	var damagedone = (result * player.curDamage) + (player.bonusDamage - player.minusDamage);
	show_debug_message(damagedone);
	done = !done;
}