# List of variables used:
# "page" - The value from the array position we're in.
# "id" - The ID of the setting.

# Give the old menu a tag.
tag @e[type=#lunareclipse.watching:config,tag=watching.settings] add watching.settings_old

# Summon the menu background. - Settings
$execute unless score settings_menu_increment watching.global_values matches 0.. positioned ^1.5 ^ ^ run summon item_display ~ ~ ~ {Tags:["watching.config","watching.menu","watching.settings", "watching.settings_$(page)"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.25f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"lunareclipse.watching:ui/config/option_page_settings"}}}

# Logic used for placing any page after page 1.
$execute if score settings_menu_increment watching.global_values matches 1.. at @e[type=marker,tag=watching.pivot] at @e[type=item_display,tag=watching.settings,sort=furthest,limit=1] positioned ^3.5 ^ ^1.5 run summon item_display ~ ~ ~ {Tags:["watching.config","watching.menu","watching.settings", "watching.settings_$(page)"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.25f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"lunareclipse.watching:ui/config/option_page_settings"}}}

# Make the page contents face the player.
execute unless entity @e[type=#lunareclipse.watching:config,tag=watching.settings_old] as @e[type=#lunareclipse.watching:config,tag=watching.settings,distance=..15] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=watching.player_pivot,limit=1]
execute if entity @e[type=#lunareclipse.watching:config,tag=watching.settings_old] as @e[type=#lunareclipse.watching:config,tag=watching.settings,distance=..15] at @s rotated as @e[type=#lunareclipse.watching:config,tag=watching.settings_old,distance=..15,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
# Make the ui maintain 0 pitch.
execute as @e[type=#lunareclipse.watching:config,tag=watching.settings,tag=!watching.pivot,distance=..15] at @s rotated as @e[type=#lunareclipse.watching:config,tag=watching.menu,distance=..15,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0

# Manaually insert some data into the forloop.
$data modify storage lunareclipse:utils temp_values.forloop."config.settings.list.$(id).$(page)".page set value "$(page)"
# Create the settings content. - Done down here to ensure that the menu background is facing the player.
$execute at @e[type=item_display,tag=watching.settings_$(page),limit=1] positioned ^-1 ^ ^ positioned ~ ~3.25 ~ run function lunareclipse.utils:forloop/start {target:"lunareclipse.watching:config_options",path:"config.settings.list.$(id).$(page)",command:"lunareclipse.watching:config/option_page/settings_content"}
# Restart the config page assembly.
scoreboard players reset config_page_assembly watching.global_values

# Create the next page arrow.
$execute if data storage lunareclipse.watching:config_options config.settings.list.$(id).page_list[1] at @e[type=item_display,tag=watching.menu,tag=watching.settings,limit=1] positioned ^3.15 ^ ^ positioned ~ ~1.6 ~ run summon interaction ~ ~ ~ {response:1b,width:1f,height:1f,Tags:["watching.config","watching.settings","watching.button","watching.next_arrow"]}
$execute if data storage lunareclipse.watching:config_options config.settings.list.$(id).page_list[1] at @e[type=item_display,tag=watching.menu,tag=watching.settings,limit=1] positioned ^3.15 ^ ^ positioned ~ ~1.6 ~ run summon item_display ~ ~ ~ {Tags:["watching.config","watching.settings","watching.button","watching.next_arrow"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:15},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_data":{type:"settings",current_page:$(page),id:"$(id)",function:"lunareclipse.watching:config/next_page/switch_page"},"minecraft:item_model":"lunareclipse.watching:ui/config/next_page"}}}

# Done twice to ensure everything is facing the correct direction.
# Make the menu face the player.
execute unless entity @e[type=#lunareclipse.watching:config,tag=watching.settings_old] as @e[type=#lunareclipse.watching:config,tag=watching.settings,distance=..15] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=watching.player_pivot,limit=1]
execute if entity @e[type=#lunareclipse.watching:config,tag=watching.settings_old] as @e[type=#lunareclipse.watching:config,tag=watching.settings,distance=..15] at @s rotated as @e[type=#lunareclipse.watching:config,tag=watching.settings_old,distance=..15,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
# Make the ui maintain 0 pitch.
execute as @e[type=#lunareclipse.watching:config,tag=watching.settings,tag=!watching.pivot,distance=..15] at @s rotated as @e[type=#lunareclipse.watching:config,tag=watching.menu,distance=..15,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0

# Remove any existing settings menus.
kill @e[type=#lunareclipse.watching:config,tag=watching.settings_old]