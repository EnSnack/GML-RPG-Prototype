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
spell[0, ID]         = "0";
spell[0, SPRITE]     = s_spFireball;
spell[0, NAME]       = "Fireball";
spell[0, ATTR]       = "dmg";
spell[0, VALUE]      = 2;
spell[0, MPCOST]     = 2;
spell[0, EFFECT]     = "Burn";
spell[0, EFFECTATTR] = 1;
spell[0, EFFECTVAL]  = "debuff";
spell[0, TARGET]     = 2;
spell[0, TRAILTYPE]  = "missile";

spell[1, ID]         = "1";
spell[1, SPRITE]     = s_spHeal;
spell[1, NAME]       = "Heal";
spell[1, ATTR]       = "heal";
spell[1, VALUE]      = 2;
spell[1, MPCOST]     = 2;
spell[1, EFFECT]     = "hot";
spell[1, EFFECTATTR] = "buff";
spell[1, EFFECTVAL]  = 1;
spell[1, TARGET]     = 0;
spell[1, TRAILTYPE]  = "mine";

spell[2, ID]         = "2";
spell[2, SPRITE]     = s_spFlamestrike;
spell[2, NAME]       = "Flamestrike";
spell[2, ATTR]       = "dmg";
spell[2, VALUE]      = 4;
spell[2, MPCOST]     = 4;
spell[2, EFFECT]     = noone;
spell[2, EFFECTATTR] = noone;
spell[2, EFFECTVAL]  = 0;
spell[2, TARGET]     = 3;
spell[2, TRAILTYPE]  = "mine";

spell[3, ID]         = "3";
spell[3, SPRITE]     = noone;
spell[3, NAME]       = "Ralley";
spell[3, ATTR]       = "";
spell[3, VALUE]      = 0;
spell[3, MPCOST]     = 2;
spell[3, EFFECT]     = "Damage Bonus";
spell[3, EFFECTATTR] = "buff";
spell[3, EFFECTVAL]  = 2;
spell[3, TARGET]     = 1;
spell[3, TRAILTYPE]  = "mine";

spell[4, ID]         = "4";
spell[4, SPRITE]     = noone;
spell[4, NAME]       = "Meteor";
spell[4, ATTR]       = "dmg";
spell[4, VALUE]      = 5;
spell[4, MPCOST]     = 2;
spell[4, EFFECT]     = noone;
spell[4, EFFECTATTR] = noone;
spell[4, EFFECTVAL]  = 0;
spell[4, TARGET]     = 4;
spell[4, TRAILTYPE]  = "nuke";
#endregion

var name = argument0;
var get  = argument1; //USE 0 FOR GET ALL

#region Get Database values
if(get == 0) {
	for (var i = 0; i < array_length_1d(spell); i++) {
		if(spell[i, NAME] == name) {
			for(var j = 1; j < VARAMM; j++) {
				spellArray[j-1] = spell[i, j];
			}
			return spellArray;
			break;
		}
	}
} else {
	for (var i = 0; i < array_length_1d(spell); i++) {
		if(spell[i, NAME] == name) {
			getValue = spell[i, get];
			return getValue;
			break;
		}
	}
}
#endregion