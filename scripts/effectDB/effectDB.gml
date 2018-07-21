#region DATABASE VARIABLES
VARAMM     =  9; //VARIABLES per spell

ID         =  0; //ID of effect
SPRITE     =  1; //SPRITE of effect
ICON       =  2; //ICON of effect
NAME       =  3; //NAME of effect
ATTR       =  4; //ATTRIBUTE of effect, "dmg" = damage, "heal" = heal, "buff" = buff, "debuff" = debuff
VALUE      =  5; //DAMAGE or HEAL value of effect
TARGET     =  6; //TARGET of effect, 0 = one ally, 1 = all allies, 2 = one enemy, 3 = all enemies, 4 = everyone
DURATION   =  7; //DURATION of effect
FUNCTION   =  8; //FUNCTIONALITY of effect (?)
#endregion

#region DATABASE
effect[0, ID]         = "0";
effect[0, SPRITE]     = noone;
effect[0, ICON]       = s_spBurnIcon;
effect[0, NAME]       = "Burn";
effect[0, ATTR]       = "debuff";
effect[0, VALUE]      = 2;
effect[0, TARGET]     = 0;
effect[0, DURATION]   = 15;
effect[0, FUNCTION]   = "dot";

effect[1, ID]         = "1";
effect[1, SPRITE]     = noone;
effect[1, ICON]       = s_spTalkIcon;
effect[1, NAME]       = "Silence";
effect[1, ATTR]       = "debuff";
effect[1, VALUE]      = 0;
effect[1, TARGET]     = 0;
effect[1, DURATION]   = 20;
effect[1, FUNCTION]   = "silence";

effect[2, ID]         = "2";
effect[2, SPRITE]     = noone;
effect[2, ICON]       = s_spHeartDIcon;
effect[2, NAME]       = "Poison";
effect[2, ATTR]       = "debuff";
effect[2, VALUE]      = 0;
effect[2, TARGET]     = 0;
effect[2, DURATION]   = 25;
effect[2, FUNCTION]   = "dot";

effect[3, ID]         = "3";
effect[3, SPRITE]     = noone;
effect[3, ICON]       = s_spHeartCIcon;
effect[3, NAME]       = "Charm";
effect[3, ATTR]       = "debuff";
effect[3, VALUE]      = 0;
effect[3, TARGET]     = 0;
effect[3, DURATION]   = 30;
effect[3, FUNCTION]   = "charm";

effect[4, ID]         = "4";
effect[4, SPRITE]     = noone;
effect[4, ICON]       = s_spBoneIcon;
effect[4, NAME]       = "Break";
effect[4, ATTR]       = "debuff";
effect[4, VALUE]      = 0;
effect[4, TARGET]     = 0;
effect[4, DURATION]   = 35;
effect[4, FUNCTION]   = "slow";

effect[5, ID]         = "5";
effect[5, SPRITE]     = noone;
effect[5, ICON]       = s_spBlindIcon;
effect[5, NAME]       = "Blind";
effect[5, ATTR]       = "debuff";
effect[5, VALUE]      = 0;
effect[5, TARGET]     = 0;
effect[5, DURATION]   = 40;
effect[5, FUNCTION]   = "blind";

effect[6, ID]         = "6";
effect[6, SPRITE]     = noone;
effect[6, ICON]       = s_spBowDownIcon;
effect[6, NAME]       = "Reduce Bow";
effect[6, ATTR]       = "debuff";
effect[6, VALUE]      = 0;
effect[6, TARGET]     = 0;
effect[6, DURATION]   = 45;
effect[6, FUNCTION]   = "bowdown";

effect[7, ID]         = "7";
effect[7, SPRITE]     = noone;
effect[7, ICON]       = s_spDmgDownIcon;
effect[7, NAME]       = "Reduce Damage";
effect[7, ATTR]       = "debuff";
effect[7, VALUE]      = 2;
effect[7, TARGET]     = 0;
effect[7, DURATION]   = 50;
effect[7, FUNCTION]   = "damagedown";
#endregion

var name = argument0;
var get  = argument1; //USE 0 FOR GET ALL

#region Get Database values
if(get == 0) {
	for (var i = 0; i < array_height_2d(effect); i++) {
		if(effect[i, NAME] == name) {
			for(var j = 1; j < VARAMM; j++) {
				spellArray[j-1] = effect[i, j];
			}
			return spellArray;
			break;
		}
	}
} else {
	for (var i = 0; i < array_height_2d(effect); i++) {
		if(effect[i, NAME] == name) {
			getValue = effect[i, get];
			return getValue;
			break;
		}
	}
}
#endregion