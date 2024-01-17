scr_input();

sprite_index = s_owlet_run; 

moveX = (pressD - pressA) * spd;

if (pressA + pressD == 0) {
    state = owletStates.idle;
    audio_stop_sound(sou_running);
}

if (pressW) {
    moveX = 0;
    moveY = -10;
    state = owletStates.jump;
}
