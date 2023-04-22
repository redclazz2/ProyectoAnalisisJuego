var _input = rollback_get_input();

if (_input.up) {vspeed -= acc; should_stop = false;} 
if (_input.down) {vspeed += acc; should_stop = false;}
if(_input.right) {hspeed += acc; should_stop = false;}
if(_input.left) {hspeed -= acc; should_stop = false;}

if(should_stop) {if vspeed > 0 vspeed -= 0.05; if hspeed > 0 hspeed -= 0.05; sprite_index = spr_player1_idle;}
else sprite_index = spr_player1;
should_stop = true;

image_angle = direction;