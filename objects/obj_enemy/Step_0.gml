var on = true;
if (on)
{
	if (image_xscale < 1)
        image_xscale += 0.1;
    if (image_yscale > 1)
        image_yscale -= 0.1;
    if (image_alpha < 1)
    {
        image_alpha += 0.01;
    	canmove = false;
    }
    else
    {
        canmove = true;
    }
    if (canmove)
    {
        var dir = point_direction(x, y, playerid.x, playerid.y);
        x += lengthdir_x(maxspeed, dir);
        y += lengthdir_y(maxspeed, dir);
    }
	if (obj_cookie.ammo > maxspeed)
	{
		if (maxspeed > 3)
		{
			maxspeed -= 0.1;
		}
	}
	if (obj_cookie.ammo < maxspeed)
	{
		if (maxspeed < 5)
		{
			maxspeed += 0.1;
		}
	}
}
else
{
	
}