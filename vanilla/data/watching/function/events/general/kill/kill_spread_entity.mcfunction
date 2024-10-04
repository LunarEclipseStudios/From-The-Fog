#debugMode
execute as @e[type=armor_stand,tag=spread] at @s run tellraw @a[tag=debugMode] ["",{"text":"Killed spread entity at ","color": "gray"},{"nbt":"Pos","entity":"@s","color": "dark_gray"}]

kill @e[type=armor_stand,tag=spread,tag=!fake]