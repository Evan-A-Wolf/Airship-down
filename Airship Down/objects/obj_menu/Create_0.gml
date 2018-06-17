menux = x;
menuy = y;
buttonh = 24;
buttonw = 256;
button_padding = 8;

// button names
button[0] = "New Game";
button[1] = "Load Game";
button[2] = "Options";
button[3] = "Credits";
button[4] = "Exit";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;

var i = 0;
repeat(buttons){
	unfold[i] = 0;
	i++
}