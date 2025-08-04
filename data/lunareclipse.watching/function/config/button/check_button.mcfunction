# Check which interaction has been clicked and then use the data from the nearest item display to run a specified function.
execute as @e[type=minecraft:interaction,tag=watching.config] at @s if data entity @s interaction as @e[type=minecraft:item_display,tag=watching.button,sort=nearest,limit=1] at @s run function lunareclipse.watching:config/button/run_function with entity @s item.components."minecraft:custom_data"

# Remove the interaction data.
execute as @e[type=minecraft:interaction,tag=watching.config] at @s if data entity @s interaction run data remove entity @s interaction