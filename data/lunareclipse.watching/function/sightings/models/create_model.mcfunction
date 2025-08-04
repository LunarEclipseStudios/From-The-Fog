# List of variables used:
# "assembled" - The passengers of the armorstand.

# Create the Herobrine model using our parameters.
$summon armor_stand ~ ~ ~ {Tags:["watching.herobrine","watching.ai"],Invisible:1b,Marker:1b,NoGravity:1b,Passengers:$(assembled)}

# Decide whether or not to show the shadow.
execute if predicate lunareclipse.watching:checks/is_dark as @e[type=minecraft:item_display,tag=watching.shadow] run data modify entity @s transformation.scale set value [0f,0f,0f]