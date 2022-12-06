execute positioned ~ ~-1.7 ~ if entity @e[tag=spread,distance=..0.5] if entity @s[distance=..70] run tag @s remove sight
execute positioned ~ ~-1.7 ~ if entity @e[tag=spread,distance=..0.5] if entity @s[distance=..70] run kill @e[tag=spread,limit=1,sort=nearest]
execute if entity @s[tag=sight] positioned ^ ^ ^0.5 if block ~ ~ ~ #watching:sight_blocks run function watching:events/sight_watching