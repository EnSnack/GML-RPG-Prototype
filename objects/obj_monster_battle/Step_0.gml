/// @description Insert description here
// You can write your code in this editor
if(curHealth <= 0) {
	ds_list_delete(oCombatController.partyRight, ds_list_find_index(oCombatController.partyRight, id));
	instance_destroy(self);
}