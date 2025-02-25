tp @s ~ ~ ~
tp @e[tag=model] ~ ~ ~
execute if block ~ ~-0.1 ~ #watching:spawning_raycast/no_col_blocks unless block ~ ~-0.1 ~ #watching:spawning_raycast/pause_raycast positioned ~ ~-0.1 ~ run function watching:events/sightings/setup/ground_correction
execute unless block ~ ~ ~ #watching:spawning_raycast/no_col_blocks unless block ~ ~-0.1 ~ #watching:spawning_raycast/pause_raycast positioned ~ ~-0.1 ~ run function watching:events/sightings/setup/ground_correction