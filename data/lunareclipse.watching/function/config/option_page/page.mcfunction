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

# Summon the info page contents.
$function lunareclipse.watching:config/option_page/info_page_displays {option:"$(option)"}

# Summon stage.
$function lunareclipse.utils:value_check/start {base:"skin_library",dynamic:"$(option)",command:"function lunareclipse.watching:config/option_page/skin_library_stage"}

# Make the page contents face the player.
execute as @e[type=#lunareclipse.watching:config,tag=watching.menu,distance=..15] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=watching.player_pivot,limit=1]
# Make the ui maintain 0 pitch.
execute as @e[type=#lunareclipse.watching:config,tag=watching.config,tag=!watching.pivot,distance=..15] at @s rotated as @e[type=#lunareclipse.watching:config,tag=watching.menu,distance=..15,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0

# If the page is the skin library move the settings menu and info page over.
$function lunareclipse.utils:value_check/start {base:"skin_library",dynamic:"$(option)",command:"execute as @e[type=#lunareclipse.watching:config,tag=watching.settings] at @s rotated as @e[type=#lunareclipse.watching:config,tag=watching.menu,tag=watching.settings,distance=..15,sort=nearest,limit=1] positioned ^2 ^ ^ run tp @s ~ ~ ~ ~ ~"}
$function lunareclipse.utils:value_check/start {base:"skin_library",dynamic:"$(option)",command:"execute as @e[type=#lunareclipse.watching:config,tag=watching.info] at @s positioned ^-2 ^ ^ run tp @s ~ ~ ~"}

# Update the skin display.
$function lunareclipse.utils:value_check/start {base:"skin_library",dynamic:"$(option)",command:"function lunareclipse.watching:config/option_page/clicked/skin/update_display {skin:default}"}
$execute if data storage lunareclipse.watching:config_options {options:{hoebrine_returns:"true"}} run function lunareclipse.utils:value_check/start {base:"skin_library",dynamic:"$(option)",command:"function lunareclipse.watching:config/option_page/clicked/skin/update_display {skin:hoebrine}"}