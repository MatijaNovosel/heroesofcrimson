/// @description  scr_shotgun_arc(arc, bullet count);
/// @param arc
/// @param  bullet count
var arc, bullet_count, middle_bullet, middle_arc;
arc = argument0;
bullet_count = argument1;

if(bullet_count mod 2 == 0) {
    middle_bullet = floor(bullet_count / 2)
    middle_arc = arc * middle_bullet - (arc / 2);;
} else {
	if(bullet_count mod 2 != 0) {
	    middle_bullet = floor(bullet_count / 2);
	    middle_arc = arc * middle_bullet;
	}
}

return(middle_arc);