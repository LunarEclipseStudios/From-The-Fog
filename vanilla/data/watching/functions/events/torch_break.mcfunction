execute if predicate watching:checks/torch_break_chance as @e[distance=..50,tag=torch_trace] at @s run setblock ~ ~ ~ air destroy
execute if score true ghostDoorConfig matches 1 unless blocks ~ ~ ~ ~ 256 ~ ~ ~2 ~ masked unless entity @e[tag=spread] unless entity @e[tag=door_open] run function watching:events/door_open_spawn
scoreboard players set true day_passed 1