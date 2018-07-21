/// @description Insert description here
// You can write your code in this editor
draw_healthbar(20, 20, 200, 50, (mcOldCurHealth / mcMaxHealth) * 100, c_black, c_red, c_green, 0, true, true);
draw_healthbar(20, 80, 200, 110, (compOldCurHealth / compMaxHealth) * 100, c_black, c_red, c_green, 0, true, true);
draw_healthbar(300, 20, 480, 50, (mcOldCurMana / mcMaxMana) * 100, c_black, c_blue, c_blue, 0, true, true);
draw_text(220, 25, round(mcOldCurHealth));
draw_text(500, 25, round(mcOldCurMana));
draw_text(220, 85, round(compOldCurHealth));

for(i = 0; i < array_length_1d(characters); i++) {
	if(array_height_2d(characters[i].curBuffs) > 0) {
		for(j = 0; j < array_height_2d(characters[i].curBuffs); j++) {
			icon = effectDB(characters[i].curBuffs[j, 0], 2);
			draw_sprite(icon, 0, 300 + (j * 20), 60);
			draw_text(310 + (j * 20), 70, characters[i].curBuffs[j, 1]);
		}
	}
	if(array_height_2d(characters[i].curDebuffs) > 0) {
		for(j = 0; j < array_height_2d(characters[i].curDebuffs); j++) {
			icon = effectDB(characters[i].curDebuffs[j, 0], 2);
			draw_sprite(icon, 0, characters[i].x + (j * 20), characters[i].y+30);
			draw_text(characters[i].x + (j * 20) + 5, characters[i].y+35, characters[i].curDebuffs[j, 1]);
			if(mouse_x > characters[i].x + (j * 20) && mouse_x < characters[i].x + (j * 20) + 16 && mouse_y > characters[i].y+30 && mouse_y < characters[i].y+46) {
				draw_text(mouse_x, mouse_y, effectDB(characters[i].curDebuffs[j, 0], 9));
			}
		}
	}
}