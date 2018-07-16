//INIT ARRAY VALUES
//REVIEW THIS
#region DATABASE VARIABLES
VARAMM     = 11; //VARIABLES per spell

ID         =  0; //ID of spell
SPRITE     =  1; //SPRITE of spell
NAME       =  2; //NAME of spell
ATTR       =  3; //ATTRIBUTE of spell, "dmg" = damage, "heal" = heal, "buff" = buff, "debuff" = debuff
VALUE      =  4; //DAMAGE or HEAL value of spell
MPCOST     =  5; //MANA COST of spell
EFFECT     =  6; //EFFECT of spell
EFFECTATTR =  7; //ATTRIBUTE of EFFECT of spell
EFFECTVAL  =  8; //VALUE of EFFECT of spell
TARGET     =  9; //TARGET of spell, 0 = one ally, 1 = all allies, 2 = one enemy, 3 = all enemies, 4 = everyone
TRAILTYPE  = 10; //TYPE of TRAIL of spell, "missile" from X to Y, "mine" straight on Y, "nuke" from sky to Y
#endregion

#region DATABASE
test[0, ID]         = "0";
test[0, SPRITE]     = s_spFireball;
test[0, NAME]       = "Fireball";
test[0, ATTR]       = "dmg";
test[0, VALUE]      = 2;
test[0, MPCOST]     = 2;
test[0, EFFECT]     = "Burn";
test[0, EFFECTATTR] = 1;
test[0, EFFECTVAL]  = "debuff";
test[0, TARGET]     = 2;
test[0, TRAILTYPE]  = "missile";

test[1, ID]         = "1";
test[1, SPRITE]     = s_spHeal;
test[1, NAME]       = "Heal";
test[1, ATTR]       = "heal";
test[1, VALUE]      = 2;
test[1, MPCOST]     = 2;
test[1, EFFECT]     = "";
test[1, EFFECTATTR] = "";
test[1, EFFECTVAL]  = 0;
test[1, TARGET]     = 0;
test[1, TRAILTYPE]  = "mine";

test[2, ID]         = "2";
test[2, SPRITE]     = s_spFlamestrike;
test[2, NAME]       = "Flamestrike";
test[2, ATTR]       = "dmg";
test[2, VALUE]      = 4;
test[2, MPCOST]     = 4;
test[2, EFFECT]     = "";
test[2, EFFECTATTR] = "";
test[2, EFFECTVAL]  = 0;
test[2, TARGET]     = 3;
test[2, TRAILTYPE]  = "mine";

test[3, ID]         = "3";
test[3, SPRITE]     = noone;
test[3, NAME]       = "Ralley";
test[3, ATTR]       = "";
test[3, VALUE]      = 0;
test[3, MPCOST]     = 2;
test[3, EFFECT]     = "Damage Bonus";
test[3, EFFECTATTR] = "buff";
test[3, EFFECTVAL]  = 2;
test[3, TARGET]     = 1;
test[3, TRAILTYPE]  = "mine";

test[4, ID]         = "4";
test[4, SPRITE]     = noone;
test[4, NAME]       = "Meteor";
test[4, ATTR]       = "dmg";
test[4, VALUE]      = 5;
test[4, MPCOST]     = 2;
test[4, EFFECT]     = "";
test[4, EFFECTATTR] = "";
test[4, EFFECTVAL]  = 0;
test[4, TARGET]     = 4;
test[4, TRAILTYPE]  = "nuke";
#endregion

var name = argument0;
var get  = argument1; //USE 0 FOR GET ALL

#region Get Database values
if(get == 0) {
	for (var i = 0; i < array_length_1d(test); i++) {
		if(test[i, NAME] == name) {
			for(var j = 1; j < VARAMM; j++) {
				spellArray[j-1] = test[i, j];
			}
			return spellArray;
			break;
		}
	}
} else {
	for (var i = 0; i < array_length_1d(test); i++) {
		if(test[i, NAME] == name) {
			getValue = test[i, get];
			return getValue;
			break;
		}
	}
}
#endregion