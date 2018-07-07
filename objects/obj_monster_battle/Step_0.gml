/// @description Insert description here
// You can write your code in this editor
if (oCombatController.currentPlayerTurn == id) {
	active = true;
} else {
	active = false;
}
if(active) {
	obj_char_battle.curHealth = obj_char_battle.curHealth - curDamage;
	nextTurn();
}
if(self.curHealth <= 0) {
	ds_list_delete(oCombatController.partyRight, ds_list_find_index(oCombatController.partyRight, id));
	instance_destroy(self);
}