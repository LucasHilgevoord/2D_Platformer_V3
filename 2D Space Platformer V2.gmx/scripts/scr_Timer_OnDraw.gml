draw_set_font(fnt_Timer);
draw_text(20, 20, "Oxygen: " + string (rounded_time));
draw_sprite(spr_Zuurstofvles, 0, x, y);
draw_sprite_stretched(Healthbar, 0, x+3, y+168-countdown_time*1.23, 43, countdown_time*1.23);
