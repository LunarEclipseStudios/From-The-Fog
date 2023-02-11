#eastCheck
execute if data entity @s {Facing:5b} unless block ~-1 ~ ~ #watching:spawn_blocks run setblock ~ ~ ~ redstone_wall_torch[facing=east]
#westCheck
execute if data entity @s {Facing:4b} unless block ~1 ~ ~ #watching:spawn_blocks run setblock ~ ~ ~ redstone_wall_torch[facing=west]
#southCheck
execute if data entity @s {Facing:3b} unless block ~ ~ ~-1 #watching:spawn_blocks run setblock ~ ~ ~ redstone_wall_torch[facing=south]
#northCheck
execute if data entity @s {Facing:2b} unless block ~ ~ ~1 #watching:spawn_blocks run setblock ~ ~ ~ redstone_wall_torch[facing=north]

#removeCheck
kill @s
