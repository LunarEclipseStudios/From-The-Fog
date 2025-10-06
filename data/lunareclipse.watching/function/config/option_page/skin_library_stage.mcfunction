# Summon the stage.
summon item_display ~ ~0.25 ~ {Tags:["watching.config","watching.menu","watching.stage"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.25f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"lunareclipse.watching:ui/config/wardrobe"}}}

# Set the spinning to true.
data modify storage lunareclipse.watching:config_options config.preview_spinning set value "true"

# Summon the pause/play button.
summon interaction ^ ^0.2 ^1 {response:1b,width:0.75f,height:0.75f,Tags:["watching.config","watching.button","watching.stage"]}
summon item_display ^ ^0.2 ^1 {Tags:["watching.config","watching.button","watching.stage"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.25f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"lunareclipse.watching:ui/config/settings/spinning_true","minecraft:custom_data":{function:"lunareclipse.watching:config/option_page/clicked/pause_spinning"}}}}