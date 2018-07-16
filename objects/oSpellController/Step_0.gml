/// @description Insert description here
// You can write your code in this editor
if(!done) {
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
	if(spEffect != noone) {
		
	}
	player.curMana -= spMp;
	done = !done;
}