# List of variables used:
# "option" - The option page being opened.

# Remove any existing menus.
kill @e[type=#lunareclipse.watching:config,tag=watching.config,tag=!watching.pivot,tag=!watching.player_pivot]
scoreboard players reset config_page_assembly watching.global_values

# Summon the menu background. - Info
execute positioned ^-1.5 ^ ^ run summon item_display ~ ~ ~ {Tags:["watching.config","watching.menu","watching.info"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.25f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"lunareclipse.watching:ui/config/option_page_info"}}}

# Summon the menu background. - Settings
$function lunareclipse.watching:config/option_page/create_settings_menu {id:"$(option)",page:1}

# Make the menu face the player.
execute as @e[type=#lunareclipse.watching:config,tag=watching.menu,distance=..15] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=watching.player_pivot,limit=1]
# Make the ui maintain 0 pitch.
execute as @e[type=#lunareclipse.watching:config,tag=watching.config,tag=!watching.pivot,distance=..15] at @s rotated as @e[type=#lunareclipse.watching:config,tag=watching.menu,distance=..15,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0

# Summon the back button.
execute at @e[type=item_display,tag=watching.info,limit=1] positioned ^-2 ^ ^ positioned ~ ~3.6 ~ run summon interaction ~ ~ ~ {response:1b,width:0.50f,height:0.50f,Tags:["watching.config","watching.button"]}
execute at @e[type=item_display,tag=watching.info,limit=1] positioned ^-2 ^ ^ positioned ~ ~3.6 ~ run summon item_display ~ ~ ~ {Tags:["watching.config","watching.button"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_data":{function:"lunareclipse.watching:config/option_page/clicked/back"}}}}
# Summon the display name text.
$execute at @e[type=item_display,tag=watching.info,limit=1] positioned ^-0.5 ^ ^ positioned ~ ~3.15 ~ run summon text_display ~ ~ ~ {Tags:["watching.config","watching.text","watching.display_name"],alignment:"center",line_width:144,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.60f,0f],scale:[0.85f,0.85f,0.85f]},text:{"translate":"config.page.$(option).display_name"},background:16711680}
# Summon the description text.
$execute at @e[type=item_display,tag=watching.info,limit=1] positioned ^-0.5 ^ ^ positioned ~ ~ ~ run summon text_display ~ ~-0.15 ~ {Tags:["watching.config","watching.text","watching.description"],alignment:"center",line_width:200 ,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.60f,0f],scale:[0.75f,0.75f,0.75f]},text:{"translate":"config.page.$(option).description"},background:16711680}
# Summon the icon.
$execute at @e[type=item_display,tag=watching.info,limit=1] positioned ^-0.5 ^ ^ positioned ~ ~2.5 ~ run summon item_display ~ ~ ~ {Tags:["watching.config","watching.icon"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.25f,0f],scale:[3f,3f,3f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"lunareclipse.watching:ui/config/icons/$(option)"}}}

# Make the page contents face the player.
execute as @e[type=#lunareclipse.watching:config,tag=watching.menu,distance=..15] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=watching.player_pivot,limit=1]
# Make the ui maintain 0 pitch.
execute as @e[type=#lunareclipse.watching:config,tag=watching.config,tag=!watching.pivot,distance=..15] at @s rotated as @e[type=#lunareclipse.watching:config,tag=watching.menu,distance=..15,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0
