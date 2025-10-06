# List of variables used:
# "id" - The ID of the setting.
# "type" - The type of option being created.
# "value" - The value that the option will switch to.
# "page" - The page that the option is being added to.
# "offset" - The position left or right of the options on the config.

# Add 3 to the scoreboard to make the text drop a line.
scoreboard players add config_page_assembly watching.global_values 4

# If the option is experimental then create the text for it.
$execute if data storage lunareclipse.watching:config_options {config:{settings:{option:{$(id):{$(page):{experimental:"true"}}}}}} positioned ^1.5 ^ ^ run summon text_display ~ ~ ~ {Tags:["watching.config","watching.settings","watching.text","watching.$(id)","watching.experimental_tag"],alignment:"center",line_width:144,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.77f,0.01f],scale:[0.5f,0.5f,0.5f]},text:{"color":"red","translate":"config.text.experimental"},background:16711680}
# Create the text.
$execute positioned ^1.5 ^ ^ run summon text_display ~ ~ ~ {Tags:["watching.config","watching.settings","watching.text","watching.$(id)","watching.display_name"],alignment:"center",line_width:144,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.60f,0f],scale:[0.75f,0.75f,0.75f]},text:{"translate":"config.setting.$(id).display_name"},background:16711680}
$execute positioned ^1.5 ^ ^ run summon text_display ~ ~ ~ {Tags:["watching.config","watching.settings","watching.text","watching.$(id)","watching.description"],alignment:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.35f,0f],scale:[0.5f,0.5f,0.5f]},text:{"translate":"config.setting.$(id).description","color":"gray"},line_width:284,background:0}
# Create the switch's hitbox.
$execute positioned ^$(offset) ^ ^ positioned ~ ~-0.125 ~ positioned ^1.5 ^ ^ run summon interaction ^ ^0.1 ^-0.25 {response:1b,width:0.75f,height:0.50f,Tags:["watching.config","watching.settings","watching.button"]}
# Create the switch.
$execute if data storage lunareclipse.watching:config_options {options:{$(id):"true"}} positioned ~ ~-0.125 ~ positioned ^1.5 ^ ^ positioned ^$(offset) ^ ^ run summon item_display ^ ^ ^ {Tags:["watching.config","watching.settings","watching.button","watching.$(id)"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.45f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_data":{value:"false",option:"$(id)",function:"lunareclipse.watching:config/option_page/clicked/boolean"},"minecraft:item_model":"lunareclipse.watching:ui/config/settings/switch_on"}}}
$execute if data storage lunareclipse.watching:config_options {options:{$(id):"false"}} positioned ~ ~-0.125 ~ positioned ^1.5 ^ ^ positioned ^$(offset) ^ ^ run summon item_display ^ ^ ^ {Tags:["watching.config","watching.settings","watching.button","watching.$(id)"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.45f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_data":{value:"true",option:"$(id)",function:"lunareclipse.watching:config/option_page/clicked/boolean"},"minecraft:item_model":"lunareclipse.watching:ui/config/settings/switch_off"}}}