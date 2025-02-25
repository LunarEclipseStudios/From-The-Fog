#debugMode
tellraw @a[tag=debugMode] ["",{"text":"Tried to execute Chilled Candles event at ","color": "gray"},{"nbt":"Pos","entity":"@s","color": "dark_gray"}]

execute if predicate watching:chances/chilled_candles_chance as @e[distance=..50,tag=candleTrace] at @s run function watching:events/chilled_candles/douse
scoreboard players set true ftf.chilledCandlesDayPassed 1

