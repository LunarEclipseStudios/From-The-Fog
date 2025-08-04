# List of variables used:
# "structure" - The structure we're trying to place.

# Initialize the array counter.
$scoreboard players set $(structure)_array_length watching.global_values -1
# Manaually insert some data into the forloop.
$data modify storage lunareclipse:utils temp_values.forloop."structures.$(structure).positions".structure set value "$(structure)"
# Get the length of the block array.
$function lunareclipse.utils:forloop/start {target:"lunareclipse.watching:global_values",path:"structures.$(structure).positions",command:"lunareclipse.watching:structures/place/increment_array_length"}
# Save the length to a storage variable.
$execute store result storage lunareclipse.watching:global_values structures.$(structure).length int 1 run scoreboard players get $(structure)_array_length watching.global_values
# Remove the length from the scoreboard.
$scoreboard players reset $(structure)_array_length watching.global_values

# Manaually insert some data into the range. (Range is inside of "roll_position")
$data modify storage lunareclipse:utils temp_values.random_range."lunareclipse.watching:structures/place/select_position".structure set value "$(structure)"
# Grab a random number between 0 and the length to select the block.
$function lunareclipse.watching:structures/place/roll_position with storage lunareclipse.watching:global_values structures.$(structure)
# Store some extra info for later.
$data modify storage lunareclipse.watching:global_values structures.$(structure).selected.structure set value "$(structure)"

# Execute the event.
$function lunareclipse.watching:structures/place/execute with storage lunareclipse.watching:global_values structures.$(structure).selected