# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.

# Check if the position in the array we are in exists.
$execute unless data storage $(target) $(path)[$(index)] run function lunareclipse.utils:forloop/cleanup with storage lunareclipse:utils temp_values.forloop."$(path)"
$execute unless data storage $(target) $(path)[$(index)] run return fail

# Store the info from the array somewhere that it is usable.
$data modify storage lunareclipse:utils temp_values.forloop."$(path)".value set from storage $(target) $(path)[$(index)]

# Run the defined command.
$function $(command) with storage lunareclipse:utils temp_values.forloop."$(path)"

# Increment the index.
$scoreboard players add $(path) lunareclipse_utils.global_values 1
$execute store result storage lunareclipse:utils temp_values.forloop."$(path)".index int 1 run scoreboard players get $(path) lunareclipse_utils.global_values

# Continue the loop.
$function lunareclipse.utils:forloop/loop with storage lunareclipse:utils temp_values.forloop."$(path)"