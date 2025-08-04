# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.
# "value" - The value from the array position we're in.
# "namespace" - The namespace ID of the skinpack.

# Add 1 to the increment score.
scoreboard players add temp_segment_length watching.global_values 1

# If the length goes past 20 then reset and log the current index number.
execute if score temp_segment_length watching.global_values matches 21.. run scoreboard players add temp_segment_index watching.global_values 1
execute if score temp_segment_length watching.global_values matches 21.. run scoreboard players reset temp_segment_length watching.global_values

# Store the segment somewhere it can be used.
execute store result storage lunareclipse.watching:global_values skin_library.custom_skin.temp.segment.index int 1 run scoreboard players get temp_segment_index watching.global_values
# Store the namespace and skin name for later use.
$data modify storage lunareclipse.watching:global_values skin_library.custom_skin.temp.segment.skin set value "$(value)"

# Add the skin to a segement.
function lunareclipse.watching:sightings/skin_library/append_pages/add_skin_to_segment with storage lunareclipse.watching:global_values skin_library.custom_skin.temp.segment

# Clear the temporary values.
data remove storage lunareclipse.watching:global_values skin_library.custom_skin.temp.segment