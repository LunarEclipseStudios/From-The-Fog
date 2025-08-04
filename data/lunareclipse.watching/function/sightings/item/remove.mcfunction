# List of variables used:
# "item" - The item we want him to hold.

# Make him hold the item.
data remove entity @e[type=minecraft:item_display,tag=watching.right_arm_item,limit=1] item
# Start the holding animation.
function lunareclipse.watching:sightings/animations/holding/stop
# Reset the scoreboard that says Herobrine has an item.
scoreboard players reset has_item watching.global_values