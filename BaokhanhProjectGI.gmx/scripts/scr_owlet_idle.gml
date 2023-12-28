scr_input()

sprite_index = s_owlet_idle

if (pressA or pressD) {
    state = owletStates.run;
} else if (pressW) {
    moveY = -10;
    state = owletStates.jump;
} 
/*else if (pressS) {
    if (place_meeting(x, y, obj_door) && global.open ==1) {
        state = kingStates.doorIn;
    }
}*/

moveX = 0;
