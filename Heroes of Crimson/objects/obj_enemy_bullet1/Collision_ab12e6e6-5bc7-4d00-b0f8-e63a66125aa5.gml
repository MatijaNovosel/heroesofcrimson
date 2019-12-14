scr_enbullet_hit(snd_player_hit1);
var selector;

selector = irandom_range(0,4);

switch(selector){
    case 1:
        scr_status_inflict(status.confused, global.playerInstance, 90, 100);
        break;
    case 2:
        scr_status_inflict(status.mark, global.playerInstance, 90, 100);
        break;
    case 3:
        scr_status_inflict(status.burn, global.playerInstance, 90, 100);
        break;
    default:
        scr_status_inflict(status.burn, global.playerInstance, 90, 100);
        break;
}

