execute if score lurkingLanguageConfig ftf.configOptions matches 0 run loot insert ~ ~ ~ loot watching:events/dreadful_donation/english
execute if score lurkingLanguageConfig ftf.configOptions matches 1 run loot insert ~ ~ ~ loot watching:events/dreadful_donation/swedish

#debugMode
tellraw @a[tag=debugMode] ["",{"text":"Dreadful Donation event succeeded at ","color": "green"},{"nbt":"Pos","entity":"@s","color": "dark_green"}]