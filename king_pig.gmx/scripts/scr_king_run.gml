scr_getinput();

sprite_index = spr_kingRun; 

if !audio_is_playing(sou_running) {
    audio_play_sound(sou_running, 1, true);
}

moveX = (pressRight - pressLeft) * spd;

if (pressLeft + pressRight == 0) {
    audio_stop_sound(sou_running);
    state = kingStates.idle;
}

if (pressUp) {
    moveX = 0;
    moveY = -10;
    audio_stop_sound(sou_running);
    state = kingStates.jump;
}

if (pressSpace) {
    audio_stop_sound(sou_running);
    state = kingStates.attack;
}
