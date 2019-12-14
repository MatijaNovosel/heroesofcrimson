/// @description  scr_status_enum();
// Set up an enumerator for each status condition
enum status {
    // Re-/degeneration 3
    healing,
    burn,
    poison,
    sick,
    
    // Defense 6
    invin1,
    invin2,
    grace_period,
    invis,
    barrier,
    armor_break,
    fatal,
    divine,
    
    // Offense 5
    att_up,
    att_down,
    dex_up,
    dex_down,
    crit_up,
    mark,
    corrosion,
    bleed,
    
    // Mobility 4
    spd_up,
    spd_down,
    paralyze,
    beckon,
    confused,
    chill,
    frozen,
    
    // Magic 2
    silence,
    mshield,
    
    // Other 2
    blind,
    rich,
    inaccurate,
    sheep,
    vampire,
    stun,
    focus,
    summon
}

// Determine the amount of different statuses by checking the number of the last status
global.Total_unique_status = status.summon;

// Limit the max. amount of status conditions a character can have to 8
global.Max_status = 8;