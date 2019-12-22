/// @description  scr_es_system_init_p2();
// Give each enemy a range dependant on it's weight
for (var i = 0; i < e_table_height; i++) {
    if (i == 0) {
        range[i] = es_data[i, 1];
    } else if (i > 0) {
        range[i] = range[i - 1] + es_data[i, 1];
    }
}

// Calculate the total weight of each unique enemy combined
e_total_weight = range[e_table_height - 1];
