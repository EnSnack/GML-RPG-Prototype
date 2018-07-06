//Create Teams
partyLeft = ds_list_create();
partyRight = ds_list_create();

//Track Teams
currentTeamTurn = 0;
nextTeamTurn = 0;

currentPlayerTurn = 0;
nextPlayerTurn = 0;

currentTeamIndex = 0;

currentTeamTurn = choose(partyLeft, partyRight);
currentPlayerTurn = ds_list_find_value(currentTeamTurn, currentTeamIndex);