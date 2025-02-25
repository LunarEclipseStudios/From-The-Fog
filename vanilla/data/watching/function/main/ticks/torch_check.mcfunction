#eastCheck
execute if data entity @s {Facing:5b} if block ~-1 ~ ~ #watching:torch_spawn_blocks run setblock ~ ~ ~ redstone_wall_torch[facing=east]
#westCheck
execute if data entity @s {Facing:4b} if block ~1 ~ ~ #watching:torch_spawn_blocks run setblock ~ ~ ~ redstone_wall_torch[facing=west]
#southCheck
execute if data entity @s {Facing:3b} if block ~ ~ ~-1 #watching:torch_spawn_blocks run setblock ~ ~ ~ redstone_wall_torch[facing=south]
#northCheck
execute if data entity @s {Facing:2b} if block ~ ~ ~1 #watching:torch_spawn_blocks run setblock ~ ~ ~ redstone_wall_torch[facing=north]
#downCheck
execute if data entity @s {Facing:0b} if block ~ ~ ~ #watching:torch_spawn_blocks if block ~ ~1 ~ #watching:air_blocks run setblock ~ ~1 ~ redstone_torch

#removeCheck
kill @s
