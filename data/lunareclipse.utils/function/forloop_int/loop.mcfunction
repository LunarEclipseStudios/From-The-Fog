# List of variables used:
# "int" - The amount of times it will loop.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.

# Check if we have reached the last number.
$execute unless score $(command) lunareclipse_utils.global_values matches $(int) if score $(command) lunareclipse_utils.global_values matches $(int).. run function lunareclipse.utils:forloop/cleanup with storage lunareclipse:utils temp_values.forloop_int."$(command)"
$execute unless score $(command) lunareclipse_utils.global_values matches $(int) if score $(command) lunareclipse_utils.global_values matches $(int).. run return fail

# Store the index in the storage.
$execute store result storage lunareclipse:utils temp_values.forloop_int."$(command)".index int 1 run scoreboard players get $(command) lunareclipse_utils.global_values

# Run the defined command.
$function $(command) with storage lunareclipse:utils temp_values.forloop_int."$(command)"

# Increment the index.
$scoreboard players add $(command) lunareclipse_utils.global_values 1

# Continue the loop.
$function lunareclipse.utils:forloop_int/loop with storage lunareclipse:utils temp_values.forloop_int."$(command)"