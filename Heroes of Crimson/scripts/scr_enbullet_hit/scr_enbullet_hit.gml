/// @description scr_enbullet_hit(sound to play);
/// @param sound to play
if (global.Pause || global.Sleep || global.eFreeze || global.playerDead) {
    exit;
}

//Calculate the total damage output when the player is hit by this bullet
var player, final_damage;
var mod1, mod2, final_defense, mod3, mod0;
player = global.playerInstance;

if(!global.playerDead) {
    if(!scr_status_find(status.invin1, global.playerInstance) 
        && !scr_status_find(status.invin2, global.playerInstance) 
        && !scr_status_find(status.grace_period, global.playerInstance)
    ){
        if((damage != -1) && (player.iframe == 0)){
            if(global.playerhp > 0) {
                // Mark the player as hit and save the enemy that hit the player
                global.Player_hit = true;
                global.Last_hit_by = master;
                
                if(global.Barrier_hp > 0) {
                    scr_zunsound(snd_hit_barrier);
                } else if(global.Barrier_hp == 0) {
                    //Explode into pixel bits
                    if(global.partOn && damage != -1) {
                        if(!scr_status_find(status.mshield, global.playerInstance) && !scr_status_find(status.barrier, global.playerInstance)){
                            for(i = 0; i < 4; i += 1) {
                                var particle_bit = instance_create(player.x, player.y, obj_pixelbit);
                                particle_bit.direction = direction + 180 + random_range(-22.5, 22.5);
                                particle_bit.speed = random_range(1, 4);
                                particle_bit.PBColorX = choose(player.PBColor1, player.PBColor2, player.PBColor3);
                            }
                        }
                        
                        if(scr_status_find(status.mshield, global.playerInstance)){
                            for(i = 0; i < 4; i += 1) {
                                action_create_object_motion(
                                    obj_arcanerunes_part,
                                    player.x,
                                    player.y,
                                    random_range(1, 4),
                                    direction + 180 + random_range(-22.5, 22.5)
                                );
                            }
                        }
                    }
                    scr_zunsound(argument0);
                }
            }
            
            // The player has been damaged, so give him invincibility frames
            player.iframe = 15;
            player.itimer = 2;
            
            if(armor_pierce || scr_status_find(status.armor_break, global.playerInstance)) {
                //If the player is marked, he takes double damage
                if(scr_status_find(status.mark, global.playerInstance)){
                    mod1 = 2;
                } else {
                    mod1 = 1;
                }
                
                final_damage = round(damage * mod1);
                
                if(final_damage < 1) {
                    final_damage = 1;
                }
                
                scr_ind_create(player.x,player.bbox_top,"-"+string(final_damage),$FF3FFF,-4);
            } else {
                //If the player is marked, he takes double damage
                if(scr_status_find(status.mark, global.playerInstance)) {
                    mod1 = 2;
                } else {
                    mod1 = 1;
                }
                
                if(scr_status_find(status.corrosion, global.playerInstance)) {
                    final_defense = round(global.Total_defense * 0.5);
                } else {
                    final_defense = global.Total_defense;
                }
                
                //If the player has divine bastion, reduce damage by 50%
                if(scr_status_find(status.divine, global.playerInstance)) {
                    mod2 = 0.5;
                } else {
                    mod2 = 1;
                }
                
                final_damage = round((damage * mod1 - final_defense) * mod2);
                
                //Check if damage goes under 1, if it does round it to 1
                if final_damage < 1
                {
                    final_damage = 1;
                }
                
                scr_ind_create(player.x,player.bbox_top,"-"+string(final_damage),$FF192C,-4);
            }
            
            // Screen shake depending on damage received
            var percentage = ((final_damage / global.playerhp_max) * 100) / 10;
            scr_camshake(round(percentage) + 5, round(percentage) + 3);
            
            if(scr_status_find(status.fatal, global.playerInstance)){
                global.playerhp = -1;
            } else if(scr_status_find(status.mshield, global.playerInstance) 
                && !scr_status_find(status.silence, global.playerInstance) 
                && global.playermp > final_damage) {
                //Convert normal damage into mana drain if the player has a manashield
                global.playermp -= final_damage;
            } else if(scr_status_find(status.mshield, global.playerInstance)) {
                global.playerhp -= (final_damage - global.playermp);
                //Break the shield
                scr_status_remove(status.barrier, global.playerInstance);
                player.mshield_cd = 600;
                global.playermp = 0;
                scr_zunsound(snd_manashield_break);
                for(i = 0; i < 16; i += 1) {
                    action_create_object_motion(obj_arcanerunes_part, player.x, player.y, random_range(2, 5),random(360));
                }
            } else {
                if(global.Barrier_hp < 1) {
                    global.playerhp -= final_damage;
                } else if(global.Barrier_hp > 0) {
                    global.Barrier_hp -= final_damage;
                    
                    // Destroy the barrier if its hp is below 1, apply armor break to the player
                    if(global.Barrier_hp < 1 && scr_status_find(status.barrier, global.playerInstance)) {
                        instance_destroy_ez(obj_barrier);
                        
                        instance_create(player.x, player.y, obj_barrier_fade);
                        scr_status_inflict(status.barrier, global.playerInstance, 300, 100);
                        
                        audio_stop_sound(snd_hit_barrier);
                        scr_zunsound(snd_destroy_barrier);
                        
                        scr_status_remove(status.barrier, global.playerInstance);
                    }
                }
                
                // Manashield cooldown, to prevent rapid breaking of the shield
                /*
                    if player.mshield_cd > 0
                        player.mshield_cd = 600;
                */
            }
            global.StatDamageTaken += final_damage;
        }
    }
    instance_destroy();
}
