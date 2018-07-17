/// @description Insert description here
// You can write your code in this editor
if(!done) {
	show_debug_message(spEffect);
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
			if(spEffect != noone) {
				found = false;
				for (var i = 0; i < array_length_1d(target.curBuffs); i++) {
					if(target.curBuffs[i, 0] == spEffect) {
						target.curBuffs[i, 1] = effectDB(spEffect, 6);
						found = !found;
					}
				}
				if(!found) {
					pos = array_length_1d(target.curBuffs);
					target.curBuffs[pos, 0] = spEffect;
					target.curBuffs[pos, 1] = effectDB(spEffect, 6);
				}
			}
			break;
		case "dmg":
			show_debug_message(target);
			if(array_length_1d(target) > 1) {
				for(i = 0; i < array_length_1d(target); i++) {
					target[i].curHealth -= spVal;
				}
			} else {
				target.curHealth -= spVal;
			}
			break;
	}
	player.curMana -= spMp;
	done = !done;
}