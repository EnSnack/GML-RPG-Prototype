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
test[0, ID]         = "0";
test[0, SPRITE]     = s_spFireball;
test[0, NAME]       = "Burn";
test[0, ATTR]       = "debuff";
test[0, VALUE]      = 2;
test[0, TARGET]     = 2;
test[0, FUNCTION]   = "dot";

test[1, ID]         = "1";
test[1, SPRITE]     = s_spHeal;
test[1, NAME]       = "Damage Bonus";
test[1, ATTR]       = "buff";
test[1, VALUE]      = 2;
test[1, TARGET]     = 1;
test[1, FUNCTION]   = "dmg increase";
#endregion