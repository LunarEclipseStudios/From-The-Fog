execute as @e[distance=..50,tag=torchTrace] at @s run function watching:events/crimson_curse/change_torches
execute as @e[distance=..50,tag=lanternTrace] at @s run function watching:events/crimson_curse/change_lanterns

#debugMode
tellraw @a[tag=debugMode] ["",{"text":"Crimson Curse event succeeded at ","color": "green"},{"nbt":"Pos","entity":"@s","color": "dark_green"}]