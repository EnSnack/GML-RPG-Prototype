/// @description Insert description here
// You can write your code in this editor
if (!active and oCombatController.currentPlayerTurn == id) {
	active = true;
}

if(active) {
		
	#region Idle State
	if(state == "idle") {
	}
	#endregion

	#region Attack State
	if(state == "attack") {
		
		var _minTar = ds_list_find_value(rightParty, 0)
		var _maxTar = ds_list_find_value(rightParty, ds_list_size(rightParty)-1)
		curTarget = _minTar
			
		if(_upClick and curTarget < _maxTar) {
			curTarget++;	
		} else if(_downClick and curTarget > _minTar) {
			curTarget--;
		}
		if (_select) {
			state = "lock";
			/*if(curDamage + (bonusDamage - minusDamage) > 0) {
				curTarget.curHealth = curTarget.curHealth - (curDamage + (bonusDamage - minusDamage));
			}*/
			instance_create_layer(0,0,"Technical",oTimedBasicAttack);
			//state = "end";
		}
	}
	#endregion
	
	#region Magic State
	if(state == "magic") {
		if(keyboard_check_pressed(combat_inputs[1]) && curMagicSelected != 0) {
			state = "magic";
			curMagicSelected = 0;
			curTarget = 0;
			spellCast = noone;
			io_clear();
		}
		if (keyboard_check_pressed(combat_inputs[0]) && curMagicSelected != 0) {
			state = "lock";
			io_clear();
			instance_create_layer(0,0,"Technical",oTimedSpellAttack);
		}
		if(curMagicSelected != 0) {
			switch(spellCast[TARGET-1]) {
				case 0:
					if(keyboard_check_pressed(combat_inputs[2]) && curTarget > ds_list_find_value(leftParty, 0)) {
						curTarget--;
					} else if(keyboard_check_pressed(combat_inputs[3]) && curTarget < ds_list_find_value(leftParty, ds_list_size(leftParty)-1)) {
						curTarget++;
					}
					break;
				case 2:
					if(keyboard_check_pressed(combat_inputs[3]) && curTarget < ds_list_find_value(rightParty, ds_list_size(rightParty)-1)) {
						curTarget++;	
					} else if(keyboard_check_pressed(combat_inputs[2]) && curTarget > ds_list_find_value(rightParty, 0)) {
						curTarget--;
					}
					break;
			}
		}
		if (keyboard_check_pressed(combat_inputs[0]) && curSpell < array_length_1d(curSpellsLearnt) && curMagicSelected == 0) {
			curMagicSelected = curSpell+1;
			spellCast = spellDB(curSpellsLearnt[curMagicSelected-1], 0);
			io_clear();
			if(curMana >= spellCast[MPCOST-1]) {
				switch(spellCast[TARGET-1]) {
					case 0:
						curTarget = ds_list_find_value(leftParty, 0);
						break;
					case 1:
						for(i = 0; i < ds_list_size(leftParty); i++) {
							curTarget[i] = ds_list_find_value(leftParty, i);
						}
						break;
					case 2:
						curTarget = ds_list_find_value(rightParty, 0);				
						break;
					case 3:
						if(ds_list_size(rightParty) > 1) {
							for(i = 0; i < ds_list_size(rightParty); i++) {
								curTarget[i] = ds_list_find_value(rightParty, i);
							}
						} else {
							curTarget = ds_list_find_value(rightParty, 0);							
						}
						break;
					case 4:
						for(i = 0; i < ds_list_size(leftParty); i++) {
							curTarget[i] = ds_list_find_value(leftParty, i);
						}
						for(i = 0; i < ds_list_size(rightParty); i++) {
							characters[i+ds_list_size(leftParty)] = ds_list_find_value(rightParty, i);
						}
						break;
				}
			} else {
				curMagicSelected = 0;	
			}
		}
	}
	#endregion
	
	#region Summon State
	#endregion
	
	#region Skill State
	#endregion
	
	#region End State
		if(state == "end") {
			curTarget = 0;
			curSpell = 0;
			curMagicSelected = 0;
			spellCast = 0;
			io_clear();
			nextTurn();
		}
	#endregion
}