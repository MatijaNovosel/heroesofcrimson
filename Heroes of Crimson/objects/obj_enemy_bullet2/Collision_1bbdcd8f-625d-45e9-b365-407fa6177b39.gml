scr_enbullet_hit(snd_player_hit1);
scr_enbullet_hit(snd_player_hit1);
var selector;

selector = irandom_range(0,4);

switch(selector){
    case 1:
        scr_status_inflict(status.spd_down, global.playerInstance, 90, 100);
        break;
    case 2:
        scr_status_inflict(status.chill, global.playerInstance, 90, 100);
        break;
    case 3:
        scr_status_inflict(status.paralyze, global.playerInstance, 90, 100);
        break;
    default:
        scr_status_inflict(status.chill, global.playerInstance, 90, 100);
        break;
}

