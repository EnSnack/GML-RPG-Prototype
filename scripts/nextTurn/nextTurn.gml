effectTick();
fightOrder();
updateNextTurn();

if(oCombatController.currentTeamIndex < ds_list_size(oCombatController.currentTeamTurn)-1) {
	oCombatController.currentTeamIndex++;	
} else {
	oCombatController.currentTeamTurn = oCombatController.nextTeamTurn;
	oCombatController.currentTeamIndex = 0;
}

oCombatController.currentPlayerTurn = ds_list_find_value(oCombatController.currentTeamTurn, oCombatController.currentTeamIndex);
oCombatController.currentPlayerTurn.state = "idle";