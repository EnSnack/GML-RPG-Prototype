/// @description Insert description here
// You can write your code in this editor
x = oCombatAction.x+200;
y = oCombatAction.y;
player = oCombatController.currentPlayerTurn;
pState = player.state;

if(pState == "idle" || pState == "end") {
	instance_destroy();	
}