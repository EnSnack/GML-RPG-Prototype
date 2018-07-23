/// @description Insert description here
// You can write your code in this editor
player = oCombatController.currentPlayerTurn;
target = oCombatController.currentPlayerTurn.curTarget;
clickLeft  = obj_char_battle.combat_inputs[0];
clickRight = obj_char_battle.combat_inputs[1];
points = 0;
pointspeed = 10;
clicked = noone;
done = false;
result = noone;
timer = 60*5;
alarm[0] = timer;
alarm[1] = 30;