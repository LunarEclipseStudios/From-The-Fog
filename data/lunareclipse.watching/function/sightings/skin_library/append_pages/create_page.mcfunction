# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.
# "value" - The value from the array position we're in.

# Manually insert the namespace into the forloop.
$data modify storage lunareclipse:utils temp_values.forloop."skin_library.custom_skin.packs.'$(value)'".namespace set value "$(value)"
# Initilize the segment length.
scoreboard players set temp_segment_index watching.global_values 0
# Segment the skin lists.
$function lunareclipse.utils:forloop/start {target:"lunareclipse.watching:global_values",path:"skin_library.custom_skin.packs.'$(value)'",command:"lunareclipse.watching:sightings/skin_library/append_pages/segment_skin_list"}
# Append that segment to the actual pack.
$data modify storage lunareclipse.watching:global_values skin_library.custom_skin.packs."$(value)" set from storage lunareclipse.watching:global_values skin_library.custom_skin.packs.temp
# Clear temporary values.
data remove storage lunareclipse.watching:global_values skin_library.custom_skin.packs.temp
scoreboard players reset temp_segment_index watching.global_values
scoreboard players reset temp_segment_length watching.global_values

# Manually insert the namespace into the forloop.
$data modify storage lunareclipse:utils temp_values.forloop."skin_library.custom_skin.packs.'$(value)'".namespace set value "$(value)"
# Loop through the segments and add pages from them.
$function lunareclipse.utils:forloop/start {target:"lunareclipse.watching:global_values",path:"skin_library.custom_skin.packs.'$(value)'",command:"lunareclipse.watching:sightings/skin_library/append_pages/new_page"}

# Clear the temporary values.
data remove storage lunareclipse.watching:global_values skin_library.custom_skin.temp
scoreboard players reset temp_skin_page_list watching.global_values