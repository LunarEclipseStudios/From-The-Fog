#reset
scoreboard players reset watchingtick 20tick

##summon
execute unless predicate watching:time/is_night if score true started matches 1 as @r at @s unless entity @e[tag=spread] unless entity @e[tag=door_open] if predicate watching:checks/sighting_chance run function watching:summon/summon
execute if predicate watching:time/is_night if score true started matches 1 as @r at @s unless entity @e[tag=spread] unless entity @e[tag=door_open] if predicate watching:checks/sighting_chance_night run function watching:summon/summon


##sounds
#footsteps_outside
execute in overworld as @a[distance=0..] at @s if block ~ ~-1 ~ grass_block if blocks ~ ~ ~ ~ 256 ~ ~ ~2 ~ masked if block ~ ~ ~ air if predicate watching:checks/sound_chance run playsound watching:outside_footsteps player @a ^ ^ ^-5 1 1
execute in overworld as @a[distance=0..] at @s if block ~ ~-1 ~ #minecraft:base_stone_overworld if blocks ~ ~ ~ ~ 256 ~ ~ ~2 ~ masked if block ~ ~ ~ air if predicate watching:checks/sound_chance run playsound watching:cave_footsteps player @a ^ ^ ^-5 1 1
#footsteps_cave
execute in overworld as @a[distance=0..] at @s if block ~ ~-1 ~ #minecraft:base_stone_overworld unless blocks ~ ~ ~ ~ 256 ~ ~ ~2 ~ masked if block ~ ~ ~ air if predicate watching:checks/sound_chance run playsound watching:cave_footsteps player @a ^ ^ ^-5 1 1

##door_open
execute if predicate watching:time/is_night if score true started matches 1 as @r at @s unless blocks ~ ~ ~ ~ 256 ~ ~ ~2 ~ masked if predicate watching:checks/sighting_chance unless entity @e[tag=spread] unless entity @e[tag=door_open] run function watching:events/door_open_spawn

##torch_check
#east
execute as @e[tag=torch_check] at @s if data entity @s {Facing:5b} if block ~-1 ~ ~ #watching:spawn_blocks run function watching:torch_check/air_detected
execute as @e[tag=torch_check] at @s if data entity @s {Facing:5b} unless block ~-1 ~ ~ #watching:spawn_blocks run kill @s
#west
execute as @e[tag=torch_check] at @s if data entity @s {Facing:4b} if block ~1 ~ ~ #watching:spawn_blocks run function watching:torch_check/air_detected
execute as @e[tag=torch_check] at @s if data entity @s {Facing:4b} unless block ~1 ~ ~ #watching:spawn_blocks run kill @s
#south
execute as @e[tag=torch_check] at @s if data entity @s {Facing:3b} if block ~ ~ ~-1 #watching:spawn_blocks run function watching:torch_check/air_detected
execute as @e[tag=torch_check] at @s if data entity @s {Facing:3b} unless block ~ ~ ~-1 #watching:spawn_blocks run kill @s
#north
execute as @e[tag=torch_check] at @s if data entity @s {Facing:2b} if block ~ ~ ~1 #watching:spawn_blocks run function watching:torch_check/air_detected
execute as @e[tag=torch_check] at @s if data entity @s {Facing:2b} unless block ~ ~ ~1 #watching:spawn_blocks run kill @s