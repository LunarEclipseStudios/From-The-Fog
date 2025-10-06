# List of variables used:
# "part" - The part we're adding to our string.
# "pivot" - The transformation values for the model.
# "emissive" - The light level of the emissive layers.
# "skin" - The ID of the skin we're assembling.
# "namespace" - The namespace of the model.

# If From The Pants is enabled make it just allow the legs through.
execute if data storage lunareclipse.watching:config_options {options:{from_the_pants:"true"}} unless data storage lunareclipse.watching:global_values {skin_library:{temp:{assemble:{part:"left_leg"}}}} unless data storage lunareclipse.watching:global_values {skin_library:{temp:{assemble:{part:"right_leg"}}}} run return fail

# If the part is Herobrine's item pivot then make sure there is no item in it.
$execute if data storage lunareclipse.watching:global_values {skin_library:{temp:{assemble:{part:"right_arm_item"}}}} run return run data modify storage lunareclipse.watching:global_values skin_library.skin.$(skin).assembled append value {id:"minecraft:item_display",view_range:1f,item_display:"thirdperson_righthand",Tags:["watching.herobrine","watching.model","watching.$(part)"],transformation:$(pivot)}

# Add this part to the previous one.
$data modify storage lunareclipse.watching:global_values skin_library.skin.$(skin).assembled append value {id:"minecraft:item_display",view_range:1f,Tags:["watching.herobrine","watching.model","watching.$(part)"],item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"$(namespace):skins/$(skin)/$(part)"}},transformation:$(pivot)}
$data modify storage lunareclipse.watching:global_values skin_library.skin.$(skin).assembled append value {id:"minecraft:item_display",view_range:1f$(emissive),Tags:["watching.herobrine","watching.model","watching.$(part)", "watching.emissive"],item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"$(namespace):skins/$(skin)/emissive/$(part)"}},transformation:$(pivot)}