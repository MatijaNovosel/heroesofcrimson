/// @description  Create some variables
scr_enemy_init("Abaghnid", 300, 0, 1, 10, snd_hit_skeleton1, snd_kill_skeleton1, false);
scr_set_fx(-1, -1, -1, -1, -1, 4, 4, 4);

// Set the enemy's AI state
ai_state = state.idle;
scr_enemy_idle_init();
scr_enemy_burst_init();
scr_enemy_range_init(500, 100, 0);

// Looting
scr_create_lt1();

seq_drop_chance = 90;

