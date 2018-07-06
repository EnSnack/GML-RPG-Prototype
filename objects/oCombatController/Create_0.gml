//Create Teams
partyLeft = ds_list_create();
partyRight = ds_list_create();

createMonster(obj_monster_battle, 3);

//Track Teams
currentTeamTurn = noone;
nextTeamTurn = noone;

currentPlayerTurn = noone;
nextPlayerTurn = noone;

currentTeamIndex = 0;

currentTeamTurn = partyLeft;
currentPlayerTurn = ds_list_find_value(currentTeamTurn, currentTeamIndex);