/// @description Insert description here
// You can write your code in this editor
mcCurHealth = obj_char_battle.curHealth;
mcCurMana = obj_char_battle.curMana
mcMaxHealth = obj_char_battle.maxHealth;
mcMaxMana = obj_char_battle.maxMana;
compCurHealth = obj_comp_battle.curHealth;
compMaxHealth = obj_comp_battle.maxHealth;
if(mcOldCurHealth > mcCurHealth || mcOldCurHealth < mcCurHealth) {
	mcOldCurHealth = lerp(mcOldCurHealth, mcCurHealth, 0.1);
}
if(mcOldCurMana > mcCurMana || mcOldCurMana < mcCurMana) {
	mcOldCurMana = lerp(mcOldCurMana, mcCurMana, 0.1);
}
if(compOldCurHealth > compCurHealth || compOldCurHealth < compCurHealth) {
	compOldCurHealth = lerp(compOldCurHealth, compCurHealth, 0.1);
}