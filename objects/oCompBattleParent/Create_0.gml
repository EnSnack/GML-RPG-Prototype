/// @description Insert description here
// You can write your code in this editor
#region Combat Stats
curHealth        = oMcInit.curHealth;
maxHealth        = oMcInit.maxHealth;
curMana          = oMcInit.curMana;
maxMana          = oMcInit.maxMana;
curDamage        = oMcInit.curDamage;
curSpellsLearnt  = array_create(0);
curSummonsLearnt = array_create(0);
curSkillsLearnt  = array_create(0);
curBuffs         = array_create(0);
curDebuffs       = array_create(0);
spellCast        = array_create(0);
for(i = 0; i < array_length_1d(oMcInit.curSpellsLearnt); i++) {
	curSpellsLearnt[i] = oMcInit.curSpellsLearnt[i];
}
for(i = 0; i < array_length_1d(oMcInit.curSummonsLearnt); i++) {
	curSummonsLearnt[i] = oMcInit.curSummonsLearnt[i];
}
for(i = 0; i < array_length_1d(oMcInit.curSkillsLearnt); i++) {
	curSkillsLearnt[i] = oMcInit.curSkillsLearnt[i];
}
#endregion

#region Combat Controls
combat_inputs[0] = ord("Z");
combat_inputs[1] = ord("X");
combat_inputs[2] = vk_up;
combat_inputs[3] = vk_down;
combat_inputs[4] = vk_left;
combat_inputs[5] = vk_right;
#endregion

#region Turn Stats
team = 0;
active = false;
state = "idle";
curTarget = 0;
curSpell = 0;
curMagicSelected = 0;
#endregion

#region EasyUseVariables
leftParty = oCombatController.partyLeft;
rightParty = oCombatController.partyRight;
#endregion