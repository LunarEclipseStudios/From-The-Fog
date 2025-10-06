# List of variables used:
# "id" - The ID of the setting.
# "type" - The type of option being created.
# "page" - The page of the config that this is being run on.
# "offset" - The position left or right of the options on the config.

# Add 4 to the scoreboard to make the text drop a line.
scoreboard players add config_page_assembly watching.global_values 4

# If the option is experimental then create the text for it.
$execute if data storage lunareclipse.watching:config_options {config:{settings:{option:{$(id):{$(page):{experimental:"true"}}}}}} positioned ^1.5 ^ ^ run summon text_display ~ ~ ~ {Tags:["watching.config","watching.settings","watching.text","watching.$(id)","watching.experimental_tag"],alignment:"center",line_width:144,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.77f,0.01f],scale:[0.5f,0.5f,0.5f]},text:{"color":"red","translate":"config.text.experimental"},background:16711680}
# Create the text.
$execute positioned ^1.5 ^ ^ run summon text_display ~ ~ ~ {Tags:["watching.config","watching.settings","watching.text","watching.$(id)"],alignment:"center",line_width:244,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.60f,0f],scale:[0.75f,0.75f,0.75f]},text:{"translate":"config.setting.$(id).display_name"},background:16711680}
$execute positioned ^1.5 ^ ^ run summon text_display ~ ~ ~ {Tags:["watching.config","watching.settings","watching.text","watching.$(id)"],alignment:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.35f,0f],scale:[0.5f,0.5f,0.5f]},text:{"translate":"config.setting.$(id).description","color":"gray"},line_width:284,background:0}

# Create the display.
$execute positioned ~ ~-0.425 ~ positioned ^1.5 ^ ^ positioned ^$(offset) ^ ^ run summon item_display ^ ^ ^ {Tags:["watching.config","watching.settings","watching.display","watching.$(id)"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.45f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"lunareclipse.watching:ui/config/settings/int_display"}}}
# Create the text.
$execute positioned ~ ~-0.425 ~ positioned ^1.5 ^ ^ positioned ^$(offset) ^ ^ run summon text_display ~ ~ ~ {Tags:["watching.config","watching.settings","watching.text","watching.display","watching.$(id)"],alignment:"center",line_width:44,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.445f,0f],scale:[0.75f,0.75f,0.75f]},text:{"nbt":"options.$(id)","storage":"lunareclipse.watching:config_options"},background:16711680}

# Create the increase button's hitbox.
$execute positioned ~ ~-0.225 ~ positioned ^2.25 ^ ^ positioned ^$(offset) ^ ^ run summon interaction ^ ^0.1 ^-0.25 {response:1b,width:0.50f,height:0.50f,Tags:["watching.config","watching.settings","watching.button"]}
$execute positioned ~ ~-0.225 ~ positioned ^2.25 ^ ^ positioned ^$(offset) ^ ^ run summon item_display ^ ^ ^ {Tags:["watching.config","watching.settings","watching.button","watching.$(id)"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.51f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_data":{value:"add", option:"$(id)",function:"lunareclipse.watching:config/option_page/clicked/increment"},"minecraft:item_model":"lunareclipse.watching:ui/config/settings/int_increase"}}}
# Create the decrease button's hitbox.
$execute positioned ~ ~-0.225 ~ positioned ^0.80 ^ ^ positioned ^$(offset) ^ ^ run summon interaction ^ ^0.1 ^-0.25 {response:1b,width:0.50f,height:0.50f,Tags:["watching.config","watching.settings","watching.button"]}
$execute positioned ~ ~-0.225 ~ positioned ^0.80 ^ ^ positioned ^$(offset) ^ ^ run summon item_display ^ ^ ^ {Tags:["watching.config","watching.settings","watching.button","watching.$(id)"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.51f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_data":{value:"remove", option:"$(id)",function:"lunareclipse.watching:config/option_page/clicked/increment"},"minecraft:item_model":"lunareclipse.watching:ui/config/settings/int_decrease"}}}