//INIT ARRAY VALUES
//REVIEW THIS
#region DATABASE VARIABLES
VARAMM     =  9; //VARIABLES per spell

ID         =  0; //ID of spell
SPRITE     =  1; //SPRITE of spell
NAME       =  2; //NAME of spell
ATTR       =  3; //ATTRIBUTE of spell, "dmg" = damage, "heal" = heal, "buff" = buff, "debuff" = debuff
VALUE      =  4; //DAMAGE or HEAL value of spell
MPCOST     =  5; //MANA COST of spell
EFFECT     =  6; //EFFECT of spell
TARGET     =  7; //TARGET of spell, 0 = one ally, 1 = all allies, 2 = one enemy, 3 = all enemies, 4 = everyone
TRAILTYPE  =  8; //TYPE of TRAIL of spell, "missile" from X to Y, "mine" straight on Y, "nuke" from sky to Y
#endregion

#region DATABASE
spell[0, ID]         = "0";
spell[0, SPRITE]     = s_spFireball;
spell[0, NAME]       = "Fireball";
spell[0, ATTR]       = "dmg";
spell[0, VALUE]      = 2;
spell[0, MPCOST]     = 0;
spell[0, EFFECT]     = "Burn";
spell[0, TARGET]     = 2;
spell[0, TRAILTYPE]  = "missile";

spell[1, ID]         = "1";
spell[1, SPRITE]     = s_spHeal;
spell[1, NAME]       = "Damage Increase";
spell[1, ATTR]       = "dmg";
spell[1, VALUE]      = 0;
spell[1, MPCOST]     = 0;
spell[1, EFFECT]     = "Increase Damage";
spell[1, TARGET]     = 0;
spell[1, TRAILTYPE]  = "mine";

spell[2, ID]         = "2";
spell[2, SPRITE]     = s_spHeal;
spell[2, NAME]       = "Poison";
spell[2, ATTR]       = "dmg";
spell[2, VALUE]      = 0;
spell[2, MPCOST]     = 0;
spell[2, EFFECT]     = "Poison";
spell[2, TARGET]     = 0;
spell[2, TRAILTYPE]  = "mine";

spell[3, ID]         = "3";
spell[3, SPRITE]     = s_spHeal;
spell[3, NAME]       = "Charm";
spell[3, ATTR]       = "dmg";
spell[3, VALUE]      = 0;
spell[3, MPCOST]     = 0;
spell[3, EFFECT]     = "Charm";
spell[3, TARGET]     = 0;
spell[3, TRAILTYPE]  = "mine";

spell[4, ID]         = "4";
spell[4, SPRITE]     = s_spHeal;
spell[4, NAME]       = "Bone Crack";
spell[4, ATTR]       = "dmg";
spell[4, VALUE]      = 0;
spell[4, MPCOST]     = 0;
spell[4, EFFECT]     = "Break";
spell[4, TARGET]     = 0;
spell[4, TRAILTYPE]  = "mine";

spell[5, ID]         = "5";
spell[5, SPRITE]     = s_spHeal;
spell[5, NAME]       = "Blind";
spell[5, ATTR]       = "dmg";
spell[5, VALUE]      = 0;
spell[5, MPCOST]     = 0;
spell[5, EFFECT]     = "Blind";
spell[5, TARGET]     = 0;
spell[5, TRAILTYPE]  = "mine";

spell[6, ID]         = "6";
spell[6, SPRITE]     = s_spHeal;
spell[6, NAME]       = "Scare";
spell[6, ATTR]       = "dmg";
spell[6, VALUE]      = 0;
spell[6, MPCOST]     = 0;
spell[6, EFFECT]     = "Reduce Damage";
spell[6, TARGET]     = 0;
spell[6, TRAILTYPE]  = "mine";
#endregion

var name = argument0;
var get  = argument1; //USE 0 FOR GET ALL

#region Get Database values
if(get == 0) {
	for (var i = 0; i < array_height_2d(spell); i++) {
		if(spell[i, NAME] == name) {
			for(var j = 1; j < VARAMM; j++) {
				spellArray[j-1] = spell[i, j];
			}
			return spellArray;
			break;
		}
	}
} else {
	for (var i = 0; i < array_height_2d(spell); i++) {
		if(spell[i, NAME] == name) {
			getValue = spell[i, get];
			return getValue;
			break;
		}
	}
}
#endregion