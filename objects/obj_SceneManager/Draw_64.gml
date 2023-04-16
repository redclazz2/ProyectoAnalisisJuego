switch current_scene{
	case "Title_Screen":
		draw_text(1280/2, 720/2, "TITLE SCREEN.\nPRESS ENTER.");
	break;
	
	case "Waiting_Screen":
		draw_text(1280/2, 720/2, "WAITING FOR GAME SESSION...");
	break;
	
	case "In_Showcase-1":
		draw_text(1280/2, 720/2, "GET READY...");
	break;
	
	case "In_Showcase0":
		draw_text(1280/2, 720/2, "PUSH THE BALL WITH SPACE!");
	break;

}