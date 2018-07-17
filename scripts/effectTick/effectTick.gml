characters = array_create(0);
buffsLength = array_height_2d(currentPlayer.curBuffs);
newBuffs = array_create(0);

for(i = 0; i < ds_list_size(leftParty); i++) {
	characters[i] = ds_list_find_value(leftParty, i);
}
for(i = ds_list_size(leftParty); i < ds_list_size(leftParty)+ds_list_size(rightParty); i++) {
	characters[i] = ds_list_find_value(rightParty, (i+1)-ds_list_size(rightParty));
}

for(i = 0; i < buffsLength; i++) {
	if(currentPlayer.curBuffs[i, 1] > 1) {
		newBuffs[i, 0] = currentPlayer.curBuffs[i, 0];
		newBuffs[i, 1] = currentPlayer.curBuffs[i, 1]-1;
	}
}
return newBuffs;