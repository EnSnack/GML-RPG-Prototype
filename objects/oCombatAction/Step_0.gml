/// @description Insert description here
// You can write your code in this editor
x = oCombatController.currentPlayerTurn.x;
y = oCombatController.currentPlayerTurn.y;

if(actChoice < 0) {
	actChoice = 3;	
} else if(actChoice > 3) {
	actChoice = 0;	
}