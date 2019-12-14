if(lifespan > 0) {
    lifespan -= 1;
} else {
    instance_destroy();
}

if(lifespan < 90 or global.playerDead) {
    state = 1;
}

if(state == 0 and _y < 40) {
    _y += 2;
}

if(state == 1) {
    _y -= 2;
}

y = y + _y;