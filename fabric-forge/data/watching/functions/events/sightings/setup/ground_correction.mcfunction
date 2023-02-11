tp @s ~ ~ ~
tp @e[tag=model] ~ ~ ~
execute if block ~ ~-0.1 ~ #watching:spawn_blocks positioned ~ ~-0.1 ~ run function watching:events/sightings/setup/ground_correction
execute unless block ~ ~ ~ #watching:spawn_blocks positioned ~ ~-0.1 ~ run function watching:events/sightings/setup/ground_correction