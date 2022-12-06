execute positioned ~ ~-1.7 ~ if entity @e[tag=spread,distance=..0.5] if entity @s[tag=watcher,distance=..32] run tag @s remove sight
execute positioned ~ ~-1.7 ~ if entity @e[tag=spread,tag=above,distance=..0.5] if entity @s[tag=watcher,distance=..32] run function watching:summon/spread_above
execute positioned ~ ~-1.7 ~ if entity @e[tag=spread,tag=!above,distance=..0.5] if entity @s[tag=watcher,distance=..32] run function watching:summon/spread_below

execute positioned ~ ~-1.7 ~ if entity @e[tag=spread,distance=..0.5] if entity @s[distance=..32] run tag @s remove sight

execute unless block ~ ~ ~ #watching:sight_blocks run tag @s remove sight
execute unless block ~ ~ ~ #watching:sight_blocks if entity @e[tag=spread,tag=above] at @s run function watching:summon/spread_above
execute unless block ~ ~ ~ #watching:sight_blocks if entity @e[tag=spread,tag=!above] at @s run function watching:summon/spread_below

execute if entity @s[tag=sight] if block ~ ~ ~ #watching:sight_blocks positioned ^ ^ ^0.5 run function watching:summon/sight_spawn
