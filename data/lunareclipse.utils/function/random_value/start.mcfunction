# List of variables used:
# "array" - The array that will contain the values that can be randomized.
# "command" - The command that is meant to run with the information.

# Store the command, target and the path somewhere that it can be used later.
$data modify storage lunareclipse:utils temp_values.random_value."$(command)".array set value $(array)
$data modify storage lunareclipse:utils temp_values.random_value."$(command)".command set value "$(command)"

# Initialize the array counter.
$scoreboard players set $(command)_array_length lunareclipse_utils.global_values -1
# Manually insert the namespace into the forloop.
$data modify storage lunareclipse:utils temp_values.forloop."temp_values.random_value.'$(command)'.array".identifier set value "$(command)"
# Get the length of the array.
$function lunareclipse.utils:forloop/start {target:"lunareclipse:utils",path:"temp_values.random_value.'$(command)'.array",command:"lunareclipse.utils:random_value/increment_array_length"}
# Save the length to a storage variable.
$execute store result storage lunareclipse:utils temp_values.random_value."$(command)".length int 1 run scoreboard players get $(command)_array_length lunareclipse_utils.global_values
# Remove the length from the scoreboard.
$scoreboard players reset $(command)_array_length lunareclipse_utils.global_values

# Roll a random number using the length.
$function lunareclipse.utils:random_value/roll_number with storage lunareclipse:utils temp_values.random_value."$(command)"
# Using that random number select one of the values from the array.
$function lunareclipse.utils:random_value/select_value with storage lunareclipse:utils temp_values.random_value."$(command)"

# Run the defined command.
$function $(command) with storage lunareclipse:utils temp_values.random_value."$(command)"

# Remove any values used during the forloop.
$data remove storage lunareclipse:utils temp_values.random_value."$(command)"

# /function lunareclipse.utils:random_value/start {array:["bruh","moment","balls"],command:"lunareclipse.utils:random_value/test"}