# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.
# "value" - The value from the array position we're in.

# Store the key and value of the info variable somewhere so it can be used later.
$data modify storage lunareclipse.watching:global_values debug.temp.concat.key set value "$(value)"
$data modify storage lunareclipse.watching:global_values debug.temp.concat.value set from storage lunareclipse.watching:global_values debug.temp.info."$(value)"

# Create the string.
function lunareclipse.watching:debug/message/create_string with storage lunareclipse.watching:global_values debug.temp.concat