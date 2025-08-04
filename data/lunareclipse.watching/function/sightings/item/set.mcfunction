# List of variables used:
# "item" - The item we want him to hold.

# Store the item in a variable.
$data modify storage lunareclipse.watching:global_values items.temp.item set value "$(item)"

# Start the holding animation.
function lunareclipse.watching:sightings/animations/holding/start
# Make him hold the item.
schedule function lunareclipse.watching:sightings/item/technical/update 1t
# Set a scoreboard that says Herobrine has an item.
scoreboard players set has_item watching.global_values 1