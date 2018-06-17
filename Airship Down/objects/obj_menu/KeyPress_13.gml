switch(menu_index){
	case 0:
		room_goto(rm_testing)
		break;
	case 1:
		show_debug_message("load later")
		break;
	case 2:
		show_debug_message("options")
		break;
	case 3:
		show_debug_message("credits")
		break;
	case 4:
		game_end();
		break;
}