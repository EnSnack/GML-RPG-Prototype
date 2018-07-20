/// @description Insert description here
// You can write your code in this editor
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