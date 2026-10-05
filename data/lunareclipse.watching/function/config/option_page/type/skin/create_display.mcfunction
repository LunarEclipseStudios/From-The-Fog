# List of variables used:
# "skin" - The skin being applied.
# "namespace" - The namespace the skin is from.

# Create the display.
$summon item_display ^ ^0.1 ^ {Tags:["watching.config","watching.settings","watching.display"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.25f,0.27f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"$(namespace):skins/$(skin)/emissive/head"}}}
$summon item_display ^ ^0.1 ^ {Tags:["watching.config","watching.settings","watching.display"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.25f,0.27f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"$(namespace):skins/$(skin)/head"}}}