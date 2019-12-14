if(!global.Pause && !global.Sleep) {
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (((x - (__view_get( e__VW.WView, 0 )/2)) - __view_get( e__VW.XView, 0 )) * 0.33) );
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (((y - (__view_get( e__VW.HView, 0 )/2)) - __view_get( e__VW.YView, 0 )) * 0.33) );
    __view_set( e__VW.XView, 0, floor(__view_get( e__VW.XView, 0 ) ));
    __view_set( e__VW.YView, 0, floor(__view_get( e__VW.YView, 0 ) ));
    
    if(global.EQ_time > 0) {
        __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (random_range(-global.EQ_level, global.EQ_level) ));
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (random_range(-global.EQ_level, global.EQ_level) ));
    }
}
