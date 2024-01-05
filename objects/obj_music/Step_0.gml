if (room == Gameroom)
{
	sound_play(mu_battle);
}
else
{
	audio_stop_sound(mu_battle);
}
if (room == Mainmenu)
{
	sound_play(mu_menu);
}
else
{
	audio_stop_sound(mu_menu);
}