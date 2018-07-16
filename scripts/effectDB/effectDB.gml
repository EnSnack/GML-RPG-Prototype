#region DATABASE VARIABLES
VARAMM     = 6; //VARIABLES per spell

ID         =  0; //ID of effect
SPRITE     =  1; //SPRITE of effect
NAME       =  2; //NAME of effect
ATTR       =  3; //ATTRIBUTE of effect, "dmg" = damage, "heal" = heal, "buff" = buff, "debuff" = debuff
VALUE      =  4; //DAMAGE or HEAL value of effect
TARGET     =  5; //TARGET of effect, 0 = one ally, 1 = all allies, 2 = one enemy, 3 = all enemies, 4 = everyone
FUNCTION   =  6; //FUNCTIONALITY of effect (?)
#endregion

#region DATABASE
effect[0, ID]         = "0";
effect[0, SPRITE]     = s_spFireball;
effect[0, NAME]       = "Burn";
effect[0, ATTR]       = "debuff";
effect[0, VALUE]      = 2;
effect[0, TARGET]     = 2;
effect[0, FUNCTION]   = "dot";

effect[1, ID]         = "1";
effect[1, SPRITE]     = s_spHeal;
effect[1, NAME]       = "Damage Bonus";
effect[1, ATTR]       = "buff";
effect[1, VALUE]      = 2;
effect[1, TARGET]     = 1;
effect[1, FUNCTION]   = "dmg increase";
#endregion

var name = argument0;
var get  = argument1; //USE 0 FOR GET ALL

#region Get Database values
if(get == 0) {
	for (var i = 0; i < array_length_1d(effect); i++) {
		if(effect[i, NAME] == name) {
			for(var j = 1; j < VARAMM; j++) {
				spellArray[j-1] = effect[i, j];
			}
			return spellArray;
			break;
		}
	}
} else {
	for (var i = 0; i < array_length_1d(effect); i++) {
		if(effect[i, NAME] == name) {
			getValue = effect[i, get];
			return getValue;
			break;
		}
	}
}
#endregion