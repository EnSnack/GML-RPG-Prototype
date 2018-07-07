/// @description Insert description here
// You can write your code in this editor
mcCurHealth = obj_char_battle.curHealth;
mcMaxHealth = obj_char_battle.maxHealth;
compCurHealth = obj_comp_battle.curHealth;
compMaxHealth = obj_comp_battle.maxHealth;
if(mcOldCurHealth > mcCurHealth) {
	mcOldCurHealth = lerp(mcOldCurHealth, mcCurHealth, 0.1);
}
if(compOldCurHealth > compCurHealth) {
	compOldCurHealth = lerp(compOldCurHealth, compCurHealth, 0.1);
}