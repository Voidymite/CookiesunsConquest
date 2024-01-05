if (room != Loading)
{
	gameframe_set_cursor = spr_cursor;
}
if (room == Mainmenu)
{
	if (keyboard_check_pressed(vk_anykey))
	{
		room = Gameroom;
	}
}
if (room == Tips)
{
	if (keyboard_check_pressed(vk_anykey))
	{
		sound_play(sfx_shoot);
		instance_create(0,0,obj_fading);
		room = Mainmenu;
	}	
}
if (!(window_has_focus()))
{
	if (instance_exists(obj_enemy))
	{
		obj_enemy.maxspeed = 0;
	}
}
else
{
	
}