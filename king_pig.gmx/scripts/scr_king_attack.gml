scr_getinput();

sprite_index = spr_kingAttack;
image_speed = 1;

if(!audio_is_playing(sou_attack)) {
    audio_play_sound(sou_attack, 1, true);
}

counter += 1;
if counter == 6 {
    if (image_xscale > 0) {
        instance_create(obj_king.x + 15, obj_king.y - 10, obj_dealDam);
    } else if (image_xscale < 0) {
        instance_create(obj_king.x - 45, obj_king.y - 10, obj_dealDam);
    }
    
    audio_stop_sound(sou_attack);
    counter = 0;
    state = kingStates.idle;
}