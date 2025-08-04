# List of variables used:
# "int" - The amount of times it will loop.
# "command" - The command that is meant to run on each item in the loop.

# Store the command, target and the amount of times the command will be ran somewhere that it can be used later.
$data modify storage lunareclipse:utils temp_values.forloop_int."$(command)".int set value "$(int)"
$data modify storage lunareclipse:utils temp_values.forloop_int."$(command)".command set value "$(command)"

# Set the scoreboard for the loop to 0 to start.
$scoreboard players set $(command) lunareclipse_utils.global_values 0
$execute store result storage lunareclipse:utils temp_values.forloop_int."$(command)".index int 1 run scoreboard players get $(command) lunareclipse_utils.global_values

# Start the loop.
$function lunareclipse.utils:forloop_int/loop with storage lunareclipse:utils temp_values.forloop_int."$(command)"

# function lunareclipse.utils:forloop/start {int:25,command:"lunareclipse.utils:forloop_int/test"}