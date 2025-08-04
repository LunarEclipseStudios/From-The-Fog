# Check if the text already exists.
execute if entity @e[type=text_display,distance=..0.25,tag=watching.tip] run return fail

# Remove any existing text displays with the specified tag.
kill @e[type=text_display,tag=watching.tip]

# Create the new tip.
execute if entity @e[type=item_display,tag=watching.main_menu] run function lunareclipse.watching:config/option_tip/create_tip_main_menu with entity @s item.components."minecraft:custom_data"
execute if entity @e[type=item_display,tag=watching.herobrine_skin] run function lunareclipse.watching:config/option_tip/create_tip_skin with entity @s item.components."minecraft:custom_data"
# Rotate the text correctly.
execute as @e[type=text_display,tag=watching.tip,distance=..1] at @s rotated as @e[type=#lunareclipse.watching:config,tag=watching.menu,distance=..15,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0