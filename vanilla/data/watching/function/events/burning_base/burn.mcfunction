fill ~1 ~ ~1 ~-1 ~ ~-1 fire replace air

#debugMode
tellraw @a[tag=debugMode] ["",{"text":"Burning base event succeeded at ","color": "green"},{"nbt":"Pos","entity":"@s","color": "dark_green"}]