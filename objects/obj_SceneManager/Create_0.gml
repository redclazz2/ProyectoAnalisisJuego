///Create Event
//Scene Manager Variables
current_scene = "Title_Screen";
username_0 = "";
pfp0 = 0;
username_1 = "";
pfp1 = 0;



with(obj_Player){
	if player_id == 0 {
		obj_SceneManager.username_0 = self.player_name;
		pfp0 = self.player_avatar_sprite;
		}
	else {
		obj_SceneManager.username_1 = self.player_name;
		pfp1 = self.player_avatar_sprite;	
	}
}