#debugMode
tellraw @a[tag=debugMode] ["",{"text":"Tried to execute Crimson Curse event at ","color": "gray"},{"nbt":"Pos","entity":"@s","color": "dark_gray"}]

execute if predicate watching:chances/crimson_curse_chance run function watching:events/crimson_curse/curse
scoreboard players set true ftf.crimsonCurseDayPassed 1