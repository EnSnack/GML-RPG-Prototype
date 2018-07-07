/// @description Insert description here
// You can write your code in this editor
if (oCombatController.currentPlayerTurn == id) {
	active = true;
} else {
	active = false;
}
if(active) {
	curTarget =	ds_list_find_value(oCombatController.partyLeft, irandom(ds_list_size(oCombatController.partyLeft)-1));
	if(curTarget.state != "dead") {
		curTarget.curHealth = curTarget.curHealth - curDamage;
	} else {
		curTarget =	ds_list_find_value(oCombatController.partyLeft, irandom(ds_list_size(oCombatController.partyLeft)-1));
	}
	nextTurn();
}
if(self.curHealth <= 0) {
	ds_list_delete(oCombatController.partyRight, ds_list_find_index(oCombatController.partyRight, id));
	instance_destroy(self);
}