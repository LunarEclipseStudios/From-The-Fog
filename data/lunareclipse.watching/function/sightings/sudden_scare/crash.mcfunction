# Run the jumpscare events.
function lunareclipse.watching:sightings/sudden_scare/jumpscare

# Play the crash sound.
playsound lunareclipse.watching:events.sudden_scare.crash master @s ~ ~ ~

# Crash the player's game.
schedule function lunareclipse.watching:sightings/sudden_scare/crash_game 3t