# List of variables used:
# "value"
# "index"

# Create the icon for the option. 
$summon item_display ^$(index) ^ ^ {Tags:["watching.config","watching.icon","watching.$(value)","watching.tip_activated"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.25f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_data":{option:"$(value)"},"minecraft:item_model":"lunareclipse.watching:ui/config/icons/$(value)"}}}
$execute positioned ~ ~0.35 ~ run summon interaction ^$(index) ^ ^-0.25 {response:1b,width:0.75f,height:0.75f,Tags:["watching.config","watching.icon","watching.$(value)","watching.tip_activated"]}