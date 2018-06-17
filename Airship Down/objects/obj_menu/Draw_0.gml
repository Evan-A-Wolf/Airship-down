var i = 0;
repeat (buttons){
	draw_set_font(font_temp);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	xx = menux;
	yy = menuy + (buttonh + button_padding) * i+256*(1-unfold[i]);
	
	draw_set_color(c_dkgray)
	draw_rectangle(xx - buttonw/2, yy - ((buttonh/2) -5), xx + buttonw, yy + (buttonh-5), false);
	
	draw_set_color(c_ltgray);
	
	if menu_index == i
	{
		draw_set_color(c_red);
	}
	
	draw_text(xx + buttonw/4, yy + buttonh/4, button[i]);
	i++;
}