#20tick
schedule function watching:20tick 1s

#20ticks
execute as @e[tag=torch_check] at @s run function watching:ticks/torch_check_20tick


##summon
execute unless predicate watching:time/is_night if score true started matches 1 as @r at @s unless entity @e[tag=spread] unless entity @e[tag=door_open] if predicate watching:checks/sighting_chance run function watching:summon/summon
execute if predicate watching:time/is_night if score true started matches 1 as @r at @s unless entity @e[tag=spread] unless entity @e[tag=door_open] if predicate watching:checks/sighting_chance_night run function watching:summon/summon

#watching
execute unless predicate watching:time/is_night if score true started matches 1 as @r at @s unless entity @e[tag=spread] unless entity @e[tag=door_open] if predicate watching:checks/sighting_chance run function watching:summon/watching_summon
execute if predicate watching:time/is_night if score true started matches 1 as @r at @s unless entity @e[tag=spread] unless entity @e[tag=door_open] if predicate watching:checks/sighting_chance_night run function watching:summon/watching_summon


##sounds
#footsteps_outside
execute in overworld as @a[distance=0..] at @s if block ~ ~-1 ~ grass_block if blocks ~ ~ ~ ~ 256 ~ ~ ~2 ~ masked if block ~ ~ ~ air if predicate watching:checks/sound_chance run playsound watching:outside_footsteps player @a ^ ^ ^-10 1 1
execute in overworld as @a[distance=0..] at @s if block ~ ~-1 ~ #minecraft:base_stone_overworld if blocks ~ ~ ~ ~ 256 ~ ~ ~2 ~ masked if block ~ ~ ~ air if predicate watching:checks/sound_chance run playsound watching:cave_footsteps player @a ^ ^ ^-10 1 1
#footsteps_cave
execute in overworld as @a[distance=0..] at @s if block ~ ~-1 ~ #minecraft:base_stone_overworld unless blocks ~ ~ ~ ~ 256 ~ ~ ~2 ~ masked if block ~ ~ ~ air if predicate watching:checks/sound_chance run playsound watching:cave_footsteps player @a ^ ^ ^-10 1 1

##door_open
execute if predicate watching:time/is_night if score true started matches 1 as @r at @s unless blocks ~ ~ ~ ~ 256 ~ ~ ~2 ~ masked if predicate watching:checks/sighting_chance unless entity @e[tag=spread] unless entity @e[tag=door_open] run function watching:events/door_open_spawn

##disappearing_torch
execute as @e[tag=torch_trace,tag=logged] at @s unless block ~ ~ ~ #watching:torches run kill @s

#disappear
execute as @e[tag=torch_trace] at @s unless score true day_passed matches 1.. unless entity @a[distance=..50,gamemode=!spectator] run function watching:events/torch_break

##blocks_breaking
#randomizer
scoreboard players add random block_breaking 1
execute if score random block_breaking matches 5.. run scoreboard players set random block_breaking 1

#cave
execute in overworld as @a[distance=0..] at @s unless entity @e[tag=mine_stone_block] if block ~ ~-1 ~ #minecraft:base_stone_overworld unless blocks ~ ~ ~ ~ 256 ~ ~ ~2 ~ masked if block ~ ~ ~ air if predicate watching:checks/mine_around_chance unless block ^1 ^1 ^ #watching:air_blocks unless block ^-1 ^1 ^ #watching:air_blocks run function watching:sounds/mine_stone_block