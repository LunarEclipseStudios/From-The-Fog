setblock ~ ~ ~ air destroy

#debugMode
tellraw @a[tag=debugMode] ["",{"text":"Torch break event succeeded at ","color": "green"},{"nbt":"Pos","entity":"@s","color": "dark_green"}]