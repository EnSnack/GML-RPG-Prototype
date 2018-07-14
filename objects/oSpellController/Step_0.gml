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
			target.curHealth -= spVal;
			break;
	}
	done = !done;
}