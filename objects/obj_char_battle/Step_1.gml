/// @description Insert description here
// You can write your code in this editor
for(i = 0; i < array_height_2d(curDebuffs); i++) {
	if(effectDB(curDebuffs[i, 0], 8) == "damagedown") {
		minusDamage = effectDB(curDebuffs[i, 0], 5);	
	}
}