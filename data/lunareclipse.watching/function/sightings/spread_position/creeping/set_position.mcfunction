# Move Herobrine to the correct position.
function lunareclipse.watching:sightings/spread_position/random_spread/start {distance_min:3, distance_max:5, spacing_min: 2, spacing_max: 3, front_spawning: 0}

# Teleport the entity up seven blocks to ensure it's not in the ground. - The at @s is there to switch from the player's position to the entity's position.
execute at @s run tp ~ ~7 ~
# Align the base entity to the center of the block.
execute at @s align xz run tp ~0.5 ~ ~0.5