#debugMode
execute if entity @s[tag=spread] run tellraw @a[tag=debugMode] ["",{"text":"Killed spread entity at ","color": "gray"},{"nbt":"Pos","entity":"@s","color": "dark_gray"}]

execute unless entity @e[type=armor_stand,tag=fake] run tp @s ~ -256 ~
execute unless entity @e[type=armor_stand,tag=fake] run kill @s