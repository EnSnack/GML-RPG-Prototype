/// @description Insert description here
// You can write your code in this editor
var spellCast = oCombatController.currentPlayerTurn.spellCast;
spSprite = spellCast[0];
spName = spellCast[1];
spAttr = spellCast[2]
spVal = spellCast[3];
spEffect = spellCast[4];
spEffectAttr = spellCast[5];
spEffectVal = spellCast[6];
spTarget = spellCast[7];
image_speed = 0.3;

target = oCombatController.currentPlayerTurn.curTarget;
done = false;

if(spTarget == 0 || spTarget == 2) {
x = target.x;
y = target.y;
}