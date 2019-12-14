/// @description  Create some variables
scr_enemy_init("Skeletal Archer", 75, 0, 1, 10, snd_hit_skeleton1, snd_kill_skeleton1, false);
scr_set_fx($F2F2F2, $BFBFBF, $191919, -1, -1, 2, 2, 4);

// Set the enemy's AI state
ai_state = state.idle;
scr_enemy_idle_init();
scr_enemy_attack_init();
scr_enemy_range_init(500, 300, 0);

// Looting
scr_create_lt1();

