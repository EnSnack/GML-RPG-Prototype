/// @description Insert description here
// You can write your code in this editor
#region Combat Stats
curHealth = 10;
maxHealth = 10;
curDamage = 2;
#endregion

#region Combat Controls
combat_inputs[0] = ord("Z");
combat_inputs[1] = ord("X");
combat_inputs[2] = ord("W");
combat_inputs[3] = ord("S");
#endregion

#region Turn Stats
team = 0;
active = false;
state = "idle";
curTarget = 0;
#endregion