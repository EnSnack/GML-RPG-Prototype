/// @description Insert description here
// You can write your code in this editor
draw_healthbar(20, 20, 200, 50, (mcOldCurHealth / mcMaxHealth) * 100, c_black, c_red, c_green, 0, true, true);
draw_healthbar(20, 80, 200, 110, (compOldCurHealth / compMaxHealth) * 100, c_black, c_red, c_green, 0, true, true);
draw_healthbar(300, 20, 480, 50, (mcOldCurMana / mcMaxMana) * 100, c_black, c_blue, c_blue, 0, true, true);
draw_text(220, 25, round(mcOldCurHealth));
draw_text(500, 25, round(mcOldCurMana));
draw_text(220, 85, round(compOldCurHealth));