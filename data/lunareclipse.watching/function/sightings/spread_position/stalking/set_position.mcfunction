# Move Herobrine to the correct position.
function lunareclipse.watching:sightings/spread_position/random_spread/start {distance_min:25, distance_max:46, spacing_min: 0, spacing_max: 35, front_spawning: 1}
# Move Herobrine to the top most block in the world where he spawns.
execute at @s positioned over motion_blocking_no_leaves run tp ~ ~ ~
# Align the base entity to the center of the block.
execute at @s align xz run tp ~0.5 ~ ~0.5