# List of variables used:
# "option" - The identifier of the mechanic being run.
# "block_tag" - The tag for the block we are checking for.

# Remove any non-existing blocks.
$function lunareclipse.watching:block_events/detection/remove/start {block_tag:"$(block_tag)"}

# Initialize the array counter.
$scoreboard players set $(option)_array_length watching.global_values -1
# Manaually insert some data into the forloop.
$data modify storage lunareclipse:utils temp_values.forloop."block_positions.$(block_tag).positions".option set value "$(option)"
# Get the length of the block array.
$function lunareclipse.utils:forloop/start {target:"lunareclipse.watching:global_values",path:"block_positions.$(block_tag).positions",command:"lunareclipse.watching:block_events/events/random/increment_array_length"}
# Save the length to a storage variable.
$execute store result storage lunareclipse.watching:global_values block_positions.$(block_tag).length int 1 run scoreboard players get $(option)_array_length watching.global_values
# Remove the length from the scoreboard.
$scoreboard players reset $(option)_array_length watching.global_values

# Manaually insert some data into the range. (Range is inside of "roll_block")
$data modify storage lunareclipse:utils temp_values.random_range."lunareclipse.watching:block_events/events/random/select_block".block_tag set value "$(block_tag)"
# Grab a random number between 0 and the length to select the block.
$function lunareclipse.watching:block_events/events/random/roll_block with storage lunareclipse.watching:global_values block_positions.$(block_tag)
# Store some extra info for later.
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).selected.option set value "$(option)"
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).selected.block_tag set value "$(block_tag)"

# Execute the event.
$function lunareclipse.watching:block_events/events/random/execute with storage lunareclipse.watching:global_values block_positions.$(block_tag).selected

# Send a message.
$execute if loaded ~ ~ ~ if score $(option)_roll watching.global_values matches 1 run function lunareclipse.watching:debug/message {message: "Random Block Event", status: "1", info: {"Event ID": "$(option)", "Block Tag": "$(block_tag)", "Status": "Executed"}, info_list: ["Event ID", "Block Tag", "Status"]}
$execute unless score $(option)_roll watching.global_values matches 1 run function lunareclipse.watching:debug/message {message: "Random Block Event", status: "0", info: {"Event ID": "$(option)", "Block Tag": "$(block_tag)", "Status": "Failed"}, info_list: ["Event ID", "Block Tag", "Status"]}

# Clear the roll scoreboard.
$scoreboard players reset $(option)_roll watching.global_values