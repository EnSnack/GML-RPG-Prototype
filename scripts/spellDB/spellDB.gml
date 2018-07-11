test[0] = "0";
test[0].name = "Fireball";
test[0].value = 2;
test[0].effect = "Burn";
test[0].effectVal = 1;
test[0].target = 1;

test[1] = "1";
test[1].name = "Heal";
test[1].value = 2;
test[1].effect = "";
test[1].effectVal = 0;
test[1].target = 0;

var name = argument0;
var column = argument1;

/*switch(column) {
	case "id":
		column = 0;
		break;
	case "name":
		column = 1;
		break;
	case "value":
		column = 2;
		break;
	case "effect":
		column = 3;
		break;
	case "effectVal":
		column = 4;
		break;
}*/

var foundVal = false;
var val = noone;
for (var i = 0; i < array_length_1d(test); i++) {
	if(test[i].name == name) {
		foundVal = true;
		for(var j = 1; j < 5; j++) {
			spellArray[j-1] = test[i];
		}
		break;
	}
}

return spellArray;