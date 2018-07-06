if(oCombatController.currentTeamTurn == oCombatController.partyLeft) {
	oCombatController.nextTeamTurn = oCombatController.partyRight;
} else if(oCombatController.currentTeamTurn == oCombatController.partyRight) {
	oCombatController.nextTeamTurn = oCombatController.partyLeft;
}