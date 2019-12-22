/// @description  Destroy the grid
if(ds_exists(floor_grid, ds_type_grid)) {
    ds_grid_destroy(floor_grid);
}

if(ds_exists(room_grid, ds_type_grid)) {
    ds_grid_destroy(room_grid);
}

if(ds_exists(corr_grid, ds_type_grid)) {
    ds_grid_destroy(corr_grid);
}

if(ds_exists(tile_grid, ds_type_grid)) {
    ds_grid_destroy(tile_grid);
}

if(ds_exists(entity_grid, ds_type_grid)){
    ds_grid_destroy(entity_grid);
}
