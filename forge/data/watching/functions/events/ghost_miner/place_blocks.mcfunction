fill ~ ~ ~ ~ ~1 ~ air
setblock ~ ~ ~ redstone_torch
execute if predicate watching:chances/number/50 run function watching:events/sounds/ambient
kill @s