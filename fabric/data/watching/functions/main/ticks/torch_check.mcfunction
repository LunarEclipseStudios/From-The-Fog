#eastCheck
execute if data entity @s {Facing:5b} if block ~-1 ~ ~ #watching:spawn_blocks run setblock ~ ~ ~ air
#westCheck
execute if data entity @s {Facing:4b} if block ~1 ~ ~ #watching:spawn_blocks run setblock ~ ~ ~ air
#southCheck
execute if data entity @s {Facing:3b} if block ~ ~ ~-1 #watching:spawn_blocks run setblock ~ ~ ~ air
#northCheck
execute if data entity @s {Facing:2b} if block ~ ~ ~1 #watching:spawn_blocks run setblock ~ ~ ~ air

#removeCheck
kill @s
