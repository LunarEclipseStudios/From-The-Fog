# List of variables used:
# "block_tag" - The tag of the block that is being searched for.

# Append the type of block to the forloop manaually.
$data modify storage lunareclipse:utils temp_values.forloop."block_positions.$(block_tag).positions".block_tag set value "$(block_tag)"
# Start the forloop.
$function lunareclipse.utils:forloop/start {target:"lunareclipse.watching:global_values",path:"block_positions.$(block_tag).positions",command:"lunareclipse.watching:block_events/detection/remove/check_block"}