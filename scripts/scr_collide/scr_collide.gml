function scr_collide()
{
    // Vertical
    repeat(abs(vsp)) 
    {
        if (!place_meeting(x, y + sign(vsp), obj_solid))
        {
            y += sign(vsp); 
        }
        else 
        {
            vsp = 0;
            break;
        }
    }

    // Horizontal
    repeat(abs(hsp)) 
    {
        if (!place_meeting(x + sign(hsp), y, obj_solid))
        {
            x += sign(hsp); 
        }
        else 
        {
            hsp = 0;
            break;
        }
    }
}