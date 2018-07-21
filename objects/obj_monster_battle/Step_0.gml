/// @description Insert description here
// You can write your code in this editor
if (oCombatController.currentPlayerTurn == id) {
	active = true;
} else {
	active = false;
}
if(active) {
	show_debug_message(self.id);
	curTarget =	ds_list_find_value(oCombatController.partyLeft, irandom(ds_list_size(oCombatController.partyLeft)-1));
	if(curTarget.state != "dead") {
		isDmgDealt = true;
		dmgDealt = curDamage;
		spellCast = spellDB(curSpellsLearnt[0], 0);
		instance_create_layer(0,0,"Technical",oSpellController);
	} else {
		//REVIEW THIS
		curTarget =	ds_list_find_value(oCombatController.partyLeft, irandom(ds_list_size(oCombatController.partyLeft)-1));
	}
	nextTurn();
}
if(self.curHealth <= 0) {
	curBuffs = 0;
	curDebuffs = 0;
	ds_list_delete(oCombatController.partyRight, ds_list_find_index(oCombatController.partyRight, id));
	instance_destroy(self);
}