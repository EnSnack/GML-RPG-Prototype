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
effect[0, SPRITE]     = s_spFireball;
effect[0, ICON]       = s_spBurnIcon;
effect[0, NAME]       = "Burn";
effect[0, ATTR]       = "buff";
effect[0, VALUE]      = 2;
effect[0, TARGET]     = 2;
effect[0, DURATION]   = 2;
effect[0, FUNCTION]   = "dot";

effect[1, ID]         = "1";
effect[1, SPRITE]     = s_spHeal;
effect[1, ICON]       = s_spHotIcon;
effect[1, NAME]       = "hot";
effect[1, ATTR]       = "buff";
effect[1, VALUE]      = 2;
effect[1, TARGET]     = 1;
effect[1, DURATION]   = 14;
effect[1, FUNCTION]   = "hot";
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