# List of variables used:
# "page" - The selected config page.

# Remove any existing menus.
kill @e[type=#lunareclipse.watching:config,tag=watching.config,tag=!watching.pivot,tag=!watching.player_pivot]
scoreboard players reset config_page_assembly watching.global_values

# SSS Menu.
$execute if data storage lunareclipse.watching:config_options {options:{give_him_control:"false"}} run function lunareclipse.utils:value_check/start {base:"1",dynamic:"$(page)",command:"function lunareclipse.watching:config/main_menu/create_sss"}
# Summon the logo.
execute positioned ~ ~4 ~ align y run summon item_display ~ ~ ~ {Tags:["watching.config","watching.text","watching.logo"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.25f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"lunareclipse.watching:ui/text"}}}
# Summon the menu background.
summon item_display ~ ~ ~ {Tags:["watching.config","watching.menu", "watching.main_menu", "watching.background"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.25f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"lunareclipse.watching:ui/config/main_menu"}}}
# Summon the options.
$execute unless data storage lunareclipse.watching:config_options {options:{give_him_control:"true"}} positioned ^-1.5 ^ ^ positioned ~ ~3 ~ run function lunareclipse.utils:forloop/start {target:"lunareclipse.watching:config_options",path:"config.pages.$(page)",command:"lunareclipse.watching:config/main_menu/page_contents"}
# If auto config is enabled always open the page with the config on it.
execute if data storage lunareclipse.watching:config_options {options:{give_him_control:"true"}} positioned ^-1.5 ^ ^ positioned ~ ~3 ~ run function lunareclipse.utils:forloop/start {target:"lunareclipse.watching:config_options",path:"config.pages.3",command:"lunareclipse.watching:config/main_menu/page_contents"}

# Create the next page arrow.
execute positioned ^2.6 ^ ^ positioned ~ ~1.6 ~ run summon interaction ~ ~ ~ {response:1b,width:1f,height:1f,Tags:["watching.config","watching.main_menu","watching.button","watching.next_arrow"]}
$execute positioned ^2.6 ^ ^ positioned ~ ~1.6 ~ run summon item_display ~ ~ ~ {Tags:["watching.config","watching.main_menu","watching.button","watching.next_arrow"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:15},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_data":{type:"main_menu",current_page:$(page),id:"null",function:"lunareclipse.watching:config/next_page/switch_page"},"minecraft:item_model":"lunareclipse.watching:ui/config/next_page"}}}

# Make the menu face the player.
execute as @e[type=#lunareclipse.watching:config,tag=watching.menu,distance=..15] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=watching.player_pivot,limit=1]
# Make the ui maintain 0 pitch.
execute as @e[type=#lunareclipse.watching:config,tag=watching.config,distance=..15] at @s rotated as @e[type=#lunareclipse.watching:config,tag=watching.menu,distance=..15] run tp @s ~ ~ ~ ~ 0

# If give him control is enabled then set the theme.
execute if data storage lunareclipse.watching:config_options {options:{give_him_control:"true"}} run function lunareclipse.watching:config/main_menu/theme/give_him_control