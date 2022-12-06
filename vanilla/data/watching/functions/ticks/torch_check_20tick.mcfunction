##torch_check
#east
execute if data entity @s {Facing:5b} if block ~-1 ~ ~ #watching:spawn_blocks run function watching:torch_check/air_detected
execute if data entity @s {Facing:5b} unless block ~-1 ~ ~ #watching:spawn_blocks run kill @s
#west
execute if data entity @s {Facing:4b} if block ~1 ~ ~ #watching:spawn_blocks run function watching:torch_check/air_detected
execute if data entity @s {Facing:4b} unless block ~1 ~ ~ #watching:spawn_blocks run kill @s
#south
execute if data entity @s {Facing:3b} if block ~ ~ ~-1 #watching:spawn_blocks run function watching:torch_check/air_detected
execute if data entity @s {Facing:3b} unless block ~ ~ ~-1 #watching:spawn_blocks run kill @s
#north
execute if data entity @s {Facing:2b} if block ~ ~ ~1 #watching:spawn_blocks run function watching:torch_check/air_detected
execute if data entity @s {Facing:2b} unless block ~ ~ ~1 #watching:spawn_blocks run kill @s
#up
execute if data entity @s {Facing:1b} if block ~ ~-1 ~ #watching:air_blocks run function watching:torch_check/air_detected
execute if data entity @s {Facing:1b} unless block ~ ~-1 ~ #watching:air_blocks run kill @s
