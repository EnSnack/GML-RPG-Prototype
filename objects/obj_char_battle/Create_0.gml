/// @description Insert description here
// You can write your code in this editor
#region Combat Stats
curHealth = oMcInit.curHealth;
maxHealth = oMcInit.maxHealth;
curDamage = oMcInit.curDamage;
for(i = 0; i < array_length_1d(oMcInit.curSpellsLearnt); i++) {
	curSpellsLearnt[i] = oMcInit.curSpellsLearnt[i];
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
#endregion