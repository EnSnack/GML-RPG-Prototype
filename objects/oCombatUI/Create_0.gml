/// @description Insert description here
// You can write your code in this editor
leftParty    = oCombatController.partyLeft;
rightParty   = oCombatController.partyRight;
characters   = array_create(0);

for(i = 0; i < ds_list_size(leftParty); i++) {
	characters[i] = ds_list_find_value(leftParty, i);
}

for(i = 0; i < ds_list_size(rightParty); i++) {
	characters[i+ds_list_size(leftParty)] = ds_list_find_value(rightParty, i);
}

mcOldCurHealth = characters[0].curHealth;
mcOldCurMana = characters[0].curMana;
compOldCurHealth = characters[1].curHealth;