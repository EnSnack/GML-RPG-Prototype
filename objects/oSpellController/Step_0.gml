/// @description Insert description here
// You can write your code in this editor
if(!done && ready) {
	switch(spAttr) {
		case "heal":
			if(target.curHealth < target.maxHealth) {
				if(target.curHealth + spVal > target.maxHealth) {
					target.curHealth = target.maxHealth;	
				} else {
					if(target.curHealth > 0) {
						target.curHealth += spVal;
					}
				}
			}
			break;
		case "dmg":
			if(array_length_1d(target) > 1) {
				for(i = 0; i < array_length_1d(target); i++) {
					target[i].curHealth -= spVal;
				}
			} else {
				target.curHealth -= spVal;
			}
			break;
	}
	if(spEffect != noone && effectDB(spEffect, 4) == "buff") {
		found = false;
		for (var i = 0; i < array_height_2d(target.curBuffs); i++) {
			if(target.curBuffs[i, 0] == spEffect) {
				target.curBuffs[i, 1] = effectDB(spEffect, 7);
				found = !found;
			}
		}
		if(!found) {
			pos = array_height_2d(target.curBuffs);
			target.curBuffs[pos, 0] = spEffect;
			target.curBuffs[pos, 1] = effectDB(spEffect, 7);
		}
	} 
	else if(spEffect != noone && effectDB(spEffect, 4) == "debuff") {
		found = false;
		for (var i = 0; i < array_height_2d(target.curDebuffs); i++) {
			if(target.curDebuffs[i, 0] == spEffect) {
				target.curDebuffs[i, 1] = effectDB(spEffect, 7);
				found = !found;
			}
		}
		if(!found) {
			pos = array_height_2d(target.curDebuffs);
			target.curDebuffs[pos, 0] = spEffect;
			target.curDebuffs[pos, 1] = effectDB(spEffect, 7);
		}
	}
	player.curMana -= spMp;
	done = !done;
}