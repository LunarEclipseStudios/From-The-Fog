# Move Herobrine to the correct position.
function lunareclipse.watching:sightings/spread_position/random_spread/start {distance_min:6, distance_max:12, spacing_min: 0, spacing_max: 18, front_spawning: 1}

# Teleport the entity up seven blocks to ensure it's not in the ground. - The at @s is there to switch from the player's position to the entity's position.
execute at @s run tp ~ ~7 ~
# Align the base entity to the center of the block.
execute at @s align xz run tp ~0.5 ~ ~0.5

# If Herobrine is in a block that is not too bright and isn't in the nether then make him light reactant.
execute at @s if data storage lunareclipse.watching:config_options {options:{dwelling_shadow:"true"}} unless dimension minecraft:the_nether unless predicate lunareclipse.watching:checks/is_too_bright run data modify storage lunareclipse.watching:global_values sightings.light_reactant set value "true"