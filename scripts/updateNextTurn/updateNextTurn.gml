if((!oCombatController.currentTeamIndex+1) < ds_list_size(oCombatController.currentTeamTurn)) {
	oCombatController.nextPlayerTurn = ds_list_find_value(oCombatController.currentTeamTurn, oCombatController.currentTeamIndex);
}
else {
	oCombatController.nextPlayerTurn = ds_list_find_value(nextTeamTurn, 0);	
}