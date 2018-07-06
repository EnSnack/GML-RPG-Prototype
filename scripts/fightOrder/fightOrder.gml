if(oCombatController.currentTeamTurn == partyLeft) {
	oCombatController.nextTeamTurn = partyRight;
} else if(oCombatController.currentTeamTurn == partyRight) {
	oCombatController.nextTeamTurn = partyLeft;
}