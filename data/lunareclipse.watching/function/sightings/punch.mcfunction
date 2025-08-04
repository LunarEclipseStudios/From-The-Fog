# Check if the player is close enough.
execute as @e[type=minecraft:armor_stand,tag=watching.ai] at @s run execute unless entity @a[distance=..6] run return fail
# Play the animation.
function lunareclipse.watching:sightings/animations/punch/start
# Punch the player.
execute as @e[type=minecraft:armor_stand,tag=watching.ai] at @s run damage @p 1 minecraft:player_attack by @s from @p