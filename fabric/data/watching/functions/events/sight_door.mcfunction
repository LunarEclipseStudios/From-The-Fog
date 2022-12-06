execute positioned ~ ~-1.7 ~ if entity @e[tag=door_open,distance=..0.5] if entity @s[distance=..32] run tag @s remove sight
execute positioned ~ ~-1.7 ~ if entity @e[tag=door_open,distance=..0.5] if entity @s[distance=..32] run function watching:events/kill
execute if entity @s[tag=sight] positioned ^ ^ ^0.5 if block ~ ~ ~ #watching:sight_blocks run function watching:events/sight_door