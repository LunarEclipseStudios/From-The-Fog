#debugMode
tellraw @a[tag=debugMode] ["",{"text":"Tried to execute Burning Base event at ","color": "gray"},{"nbt":"Pos","entity":"@s","color": "dark_gray"}]

execute if predicate watching:chances/burning_base_chance as @e[distance=..50,tag=bedTrace] at @s run function watching:events/burning_base/burn
scoreboard players set true ftf.bedDayPassed 1