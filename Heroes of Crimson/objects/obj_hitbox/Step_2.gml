// Stay on the player
x = global.playerInstance.x
y = global.playerInstance.y

// Fade in/out when shift is held down
if(!global.Pause and !global.Sleep) {
    if(global.playerInstance.mslow = 1 or global.permHitbox) {
        if(alpha < 0.8) {
			alpha += 0.1
        }
    } else {
        if(alpha > 0) {
			alpha -= 0.1
        }
    }
}