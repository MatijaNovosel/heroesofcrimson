/// @description  scr_plbullet_hit();
if (global.Pause || global.Sleep) {exit;}

// Save the id of the hit enemy
var enemy_id, final_damage;
var final_defense;
var mod0, mod1, mod2;
enemy_id = other.id;

// Keep track of which enemies have been hit by this piercing projectile (if it is one)
if(pierce) {
    for(var i = 0; i <= numHit; i ++) {
        if(hitList[i] == enemy_id){
            exit;
        }
    }
    numHit ++;
    hitList[numHit] = enemy_id;
}

// Calculate the damage done after factoring in defense, crits and armor pierce
if(enemy_id.hp > 0 && !collision_line(enemy_id.x,enemy_id.y,global.playerInstance.x,global.playerInstance.y,obj_wall_par,false,true)) {
    if !scr_status_find(status.invin1, enemy_id) && !scr_status_find(status.invin2, enemy_id)
    {
        //Check if the target has been marked, if it has increase crit chances against it
        if(scr_status_find(status.mark, enemy_id)){
            crit = crit * 2;
        }
        
        // If it's a critical hit, double the damage and ignore defense
        if crit > random(100){
            //Check if the target has been marked, if it has increase damage thrice as much
            if(scr_status_find(status.mark, enemy_id)){
                damage *= 3;
            }else{
                damage *= 2;
            }
            
            final_damage = scr_att_calc(damage);
            
            if final_damage < 1
            {
                final_damage = 1;
            }
                
            scr_ind_create(enemy_id.x, enemy_id.bbox_top, "-"+string(final_damage), $FF2A00, -4);
            if (obj_inv.box[# 0, 0] == 81){
                scr_status_inflict(status.burn, enemy_id, 60*3, 100);
            }
        }
        else
        {
            // Ignore defense if armor pierce
            if armor_pierce || scr_status_find(status.armor_break, enemy_id)
            {          
                //Check for corrosion on player
                if(scr_status_find(status.corrosion, global.playerInstance)){
                    mod2 = 0.6;
                }else{
                    mod2 = 1;
                }
                
                //Check for mark
                if(scr_status_find(status.mark, enemy_id)){
                    mod0 = 2;
                }else{
                    mod0 = 1;
                }
                
                final_damage = round(scr_att_calc(damage)*mod2*mod0);
                
                if final_damage < 1
                {
                    final_damage = 1;
                }
                
                scr_ind_create(enemy_id.x, enemy_id.bbox_top, "-"+string(final_damage), $DB2BCF, -4);
                
                if (obj_inv.box[# 0, 0] == 81){
                    scr_status_inflict(status.burn, enemy_id, 60*3, 100);
                }
            }
            // Factor in defense
            else
            {
                //Check for corrosion on enemy
                if(scr_status_find(status.corrosion, enemy_id)){
                    final_defense = round(enemy_id.def * 0.5);
                }else{
                    final_defense = enemy_id.def;
                }
                
                //Check for corrosion on player
                if(scr_status_find(status.corrosion, global.playerInstance)){
                    mod2 = 0.6;
                }else{
                    mod2 = 1;
                }
                
                //Check for mark
                if(scr_status_find(status.mark, enemy_id)){
                    mod0 = 2;
                }else{
                    mod0 = 1;
                }
                
                //Check for divine bastion
                if(scr_status_find(status.divine, enemy_id)){
                    mod1 = 0.5;
                }else{
                    mod1 = 1;
                }
                
                final_damage = round((scr_att_calc(damage)*mod2*mod0 - final_defense)*mod1);
                
                if final_damage < 1
                {
                    final_damage = 1;
                }
                
                scr_ind_create(enemy_id.x, enemy_id.bbox_top, "-"+string(final_damage), $FF7F00, -4);
                if (obj_inv.box[# 0, 0] == 81){
                    scr_status_inflict(status.burn, enemy_id, 60*3, 100);
                }
            }
        }
        
        // Subtract the calculated damage from the enemy's hp total
        if scr_status_find(status.fatal, enemy_id)
        {
            enemy_id.hp = 0;
        }
        else
        {
            if(global.lifesteal == 1){
                global.playerhp += final_damage;
                scr_ind_create(global.playerInstance.x, global.playerInstance.bbox_top, "+"+string(final_damage), $2DB73D, -4);
            }
            
            enemy_id.hp -= final_damage;
        }
    }
    
    // Play the enemy's sound effects and create particles when hit/killed
    if enemy_id.hp <= 0
    {
        scr_sound(enemy_id.death_snd, 1, 0.75, 1.25);
        
        with (enemy_id)
        {
            // global.Pause for a split-second and shake the screen
            if (final_damage < enemy_id.hp_max * 1.5)
            {
                if global.sleepOn
                {
                    global.Sleep = enemy_id.sleep_wd;
                }
                
                scr_camshake(enemy_id.eq_time_wd, enemy_id.eq_level_wd);
            }

            instance_destroy();
        }
    }
    else
    if enemy_id.hp > 0
    {
        scr_sound_plbullet(enemy_id.hit_snd);
        
        if global.partOn
        {
            for (i = 0; i < 3; i += 1)
            {
                var pbit = instance_create(enemy_id.x, enemy_id.y, obj_pixelbit);
                pbit.direction = direction + 180 + random_range(-22.5, 22.5);
                pbit.speed = random_range(1, 4);
                pbit.PBColorX = choose(enemy_id.hit_color[0], enemy_id.hit_color[1], enemy_id.hit_color[2], enemy_id.hit_color[3], enemy_id.hit_color[4]);
            }
        }
    }
    

    
    // If the projectile doesn't pierce through enemies, destroy it
    if (!pierce)
    {
        instance_destroy();
    }
}
