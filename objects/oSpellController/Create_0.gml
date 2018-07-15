/// @description Insert description here
// You can write your code in this editor
var spellCast = oCombatController.currentPlayerTurn.spellCast;
spSprite = spellCast[0];
spName = spellCast[1];
spAttr = spellCast[2]
spVal = spellCast[3];
spMp = spellCast[4];
spEffect = spellCast[5];
spEffectAttr = spellCast[6];
spEffectVal = spellCast[7];
spTarget = spellCast[8];
spTrail = spellCast[9];
image_speed = 0.1;

player = oCombatController.currentPlayerTurn;
target = oCombatController.currentPlayerTurn.curTarget;
done = false;

if(spTrail == "missile") {
missilex = player.x;
missiley = player.y;
missilespeedx = 10;
missilespeedy = (target.y - player.y) / (target.x - player.x) * missilespeedx;
rotation = point_direction(player.x, player.y, target.x, target.y);
}

if(spTarget == 0 || spTarget == 2) {
x = target.x;
y = target.y;
}