#debugMode
tellraw @a[tag=debugMode] ["",{"text":"Tried to execute torch breaking event at ","color": "gray"},{"nbt":"Pos","entity":"@s","color": "dark_gray"}]

execute if predicate watching:chances/torch_break_chance as @e[distance=..50,tag=torchTrace] at @s run function watching:events/torch_break/break
scoreboard players set true ftf.torchDayPassed 1