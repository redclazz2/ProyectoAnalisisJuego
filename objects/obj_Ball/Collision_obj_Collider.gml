var rnd = random_range(-15,15);

var coll_dir = point_direction(other.x,other.y,x,y);

motion_add(coll_dir + rnd, 10);
if speed > 2.5 speed = 2.5