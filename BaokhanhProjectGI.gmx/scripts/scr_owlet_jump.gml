scr_input();

sprite_index = s_owlet_jump;

// Idle when collision ground
if (place_meeting(x, y + moveY, o_ground))
{
    repeat(abs(moveY))
    {
        if (not place_meeting(x, y + sign(moveY), o_ground))
        {
            y += sign(moveY);
        }
        break;
    }
           
    state = owletStates.idle;
}

if (pressD) {
    moveX = spd - 1;
} 

if (pressA) {
    moveX = -(spd -1);
}