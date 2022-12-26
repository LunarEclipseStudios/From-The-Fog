execute positioned ~ ~-1.7 ~ if entity @e[tag=spread,distance=..0.5] if entity @s[distance=..32] run tag @s remove sight
execute if score true spotNoiseConfig matches 1 positioned ~ ~-1.7 ~ if entity @e[tag=spread,distance=..0.5] if entity @s[distance=..32] at @s run playsound minecraft:ambient.cave hostile @s ~ ~-10 ~ 1 1
execute positioned ~ ~-1.7 ~ if entity @e[tag=spread,distance=..0.5] if entity @s[distance=..32] run kill @e[tag=spread,limit=1,sort=nearest]
execute if entity @s[tag=sight] positioned ^ ^ ^0.5 if block ~ ~ ~ #watching:sight_blocks run function watching:events/sight