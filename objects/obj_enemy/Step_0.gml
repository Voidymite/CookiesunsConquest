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
	if (HP <= 0)
	{
		on = false;
	}
	if (HP == 0)
	{
		on = false;
	}
	if (HP < 0)
	{
		on = false;
	}
}
else
{
	if (image_alpha > 0)
	{
		image_alpha -= 0.01;
	}
	if (image_alpha <= 0)
	{
		instance_destroy();
	}
}