# Set the jumpscared score to 1.
scoreboard players set teleport_jumpscared watching.global_values 1
# Teleport Herobrine to the player.
execute rotated ~ 0 run tp @e[type=minecraft:armor_stand,tag=watching.ai] ^ ^ ^1
# Clear player spotted.
scoreboard players reset player_spotted watching.global_values
# Trigger the jumpscare.
function lunareclipse.watching:sightings/sudden_scare/init