//INIT ARRAY VALUES
//REVIEW THIS
ID        = 0; //ID of spell
NAME      = 1; //NAME of spell
VALUE     = 2; //DAMAGE or HEAL value of spell
EFFECT    = 3; //EFFECT of spell
EFFECTVAL = 4; //VALUE of EFFECT of spell
TARGET    = 5; //TARGET of spell, 0 = one ally, 1 = all allies, 2 = one enemy, 3 = all enemies, 4 = everyone

test[0, ID]        = "0";
test[0, NAME]      = "Fireball";
test[0, VALUE]     = 2;
test[0, EFFECT]    = "Burn";
test[0, EFFECTVAL] = 1;
test[0, TARGET]    = 1;

test[1, ID]        = "1";
test[1, NAME]      = "Heal";
test[1, VALUE]     = 2;
test[1, EFFECT]    = "";
test[1, EFFECTVAL] = 0;
test[1, TARGET]    = 0;

var name = argument0;

for (var i = 0; i < array_length_1d(test); i++) {
	if(test[i, NAME] == name) {
		for(var j = 1; j < 6; j++) {
			spellArray[j-1] = test[i, j];
		}
		break;
	}
}

return spellArray;