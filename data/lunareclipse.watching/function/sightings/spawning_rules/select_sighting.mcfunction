# List of variables used:
# "type" - The type of sighting being summoned.

# If a door ghost exists do not spawn.
execute if entity @e[type=minecraft:villager,tag=watching.door_ghost] run return fail

# Summon the queued sighting type on a random player.
$execute as @r[gamemode=!spectator] at @s run function lunareclipse.watching:sightings/presets/$(type)