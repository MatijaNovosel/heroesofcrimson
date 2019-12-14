draw_set_font(fnt_lootbonusget);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(scr_cformat(color));
draw_set_alpha(alpha);

if lb_value = 0
{
    draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/4,string_hash_to_newline("Boss defeated!"));
}
else
{
    draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/4,string_hash_to_newline("Boss defeated!#Total loot rarity bonus = +"+string(lb_value)+"%"));
}

draw_set_alpha(1);

