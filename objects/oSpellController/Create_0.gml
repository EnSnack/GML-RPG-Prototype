/// @description Insert description here
// You can write your code in this editor
var spellCast = oCombatController.currentPlayerTurn.spellCast;
spSprite = spellCast[0];
spName = spellCast[1];
spVal = spellCast[2];
spEffect = spellCast[3];
spEffectVal = spellCast[4];
spTarget = spellCast[5];
image_speed = 0.3;

x = oCombatController.currentPlayerTurn.curTarget.x;
y = oCombatController.currentPlayerTurn.curTarget.y;