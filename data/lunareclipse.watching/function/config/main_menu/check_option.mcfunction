# Check which option has been clicked and open the corresponding menu.
execute as @e[type=minecraft:interaction,tag=watching.config] at @s if data entity @s interaction run function lunareclipse.watching:config/option_page/open_page with entity @e[type=minecraft:item_display,tag=watching.icon,sort=nearest,limit=1] item.components."minecraft:custom_data"
# Remove the interaction data.
execute as @e[type=minecraft:interaction,tag=watching.config] at @s if data entity @s interaction run data remove entity @s interaction