# Give the player a tag that indicates that they are having a nightmare.
tag @s add watching.having_nightmare

# Teleport the base entity to the correct position in accordince to bed rotation.
execute as @e[type=interaction,tag=watching.spread_entity] run function lunareclipse.watching:sightings/spread_position/nightmare/set_position