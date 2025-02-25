execute as @e[tag=doorGhost] at @s run function watching:events/sounds/ambient
execute as @e[tag=doorGhost] at @s if predicate watching:chances/number/50 run function watching:events/sightings/stalking
execute as @e[tag=doorGhost] at @s run tellraw @a[tag=debugMode] ["",{"text":"Door ghost tried to open/close door at ","color": "gray"},{"nbt":"Pos","entity":"@s","color": "dark_gray"}]
execute as @e[tag=doorGhost] at @s run function watching:events/general/kill/kill
