x = (xprevious);
y = (yprevious);

if !place_meeting(x + hspeed,y,other)
{x += hspeed;  exit;}
else hspeed = 0;

if !place_meeting(x,y + vspeed,other)
{y += vspeed; exit;}
else vspeed = 0;