move = ((keyboard_check(vk_right)) - (keyboard_check(vk_left)));
moveup = ((keyboard_check(vk_down)) - (keyboard_check(vk_up)));
hsp = (move * movespeed);
vsp = (moveup * upspeed);
if (moveup != 0)
{
	upspeed = 6;
}
if (move != 0)
{
	movespeed = 6;
}
if (keyboard_check_pressed(vk_space) && (canshoot == true))
{
	image_xscale = 1.3;
	image_yscale = 0.5;
	audio_play_sound(sfx_shoot,0,false);
	instance_create(x,y-45,obj_cookieeffectB);
	instance_create(x, y, obj_projectile);
	ammo--
}
if (ammo <= 0)
{
	ammo = 0;
	canshoot = false;
}
if (ammo <= 0 && canshoot == false)
{
	reloading = true;
}
if (reloading == true && reloaded == false && reloadtimer != 100)
{
	reloadtimer = 10;
	reloaded = true;
}
if (reloadtimer > 0 && reloading)
{
	reloadtimer--
}
if (reloaded && reloadtimer == 0 && reloading)
{
	if (ammo < 10)
	{
		ammo++
        reloaded = false;
	}
	else
	{
		reloading = false;
	}
	canshoot = true;
}
if (image_xscale > 1)
{
	image_xscale = lerp(image_xscale,1,0.1);
}
if (image_yscale < 1)
{
	image_yscale = lerp(image_yscale,1,0.1);
}
var tip1 = false;
ini_open("cookieini.ini");
if (!(ini_read_real("Tip","movetip",false)))
{
	draw_text(x,y+35,"PRESS ANYTHING TO MOVE");
	if (move != 0 || moveup != 0)
	{
		ini_write_real("Tip","movetip",true);
	}
}
ini_close();
if (hurttimer > 0)
{
	hurttimer--
}
scr_collide();