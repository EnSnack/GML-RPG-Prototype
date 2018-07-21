/// @description Insert description here
// You can write your code in this editor
for(i = 0; i < ds_list_size(leftParty); i++) {
	characters[i] = ds_list_find_value(leftParty, i);
}

for(i = 0; i < ds_list_size(rightParty); i++) {
	characters[i+ds_list_size(leftParty)] = ds_list_find_value(rightParty, i);
}
mcCurHealth = characters[0].curHealth;
mcCurMana = characters[0].curMana
mcMaxHealth = characters[0].maxHealth;
mcMaxMana = characters[0].maxMana;
compCurHealth = characters[1].curHealth;
compMaxHealth = characters[1].maxHealth;
if(mcOldCurHealth > mcCurHealth || mcOldCurHealth < mcCurHealth) {
	mcOldCurHealth = lerp(mcOldCurHealth, mcCurHealth, 0.1);
}
if(mcOldCurMana > mcCurMana || mcOldCurMana < mcCurMana) {
	mcOldCurMana = lerp(mcOldCurMana, mcCurMana, 0.1);
}
if(compOldCurHealth > compCurHealth || compOldCurHealth < compCurHealth) {
	compOldCurHealth = lerp(compOldCurHealth, compCurHealth, 0.1);
}