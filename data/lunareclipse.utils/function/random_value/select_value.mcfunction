# List of variables used:
# "array" - The array that will contain the values that can be randomized.
# "command" - The command that is meant to run with the information.
# "length" - The length of the array.
# "index" - The position in the array that was chosen.

# Save the chosen value to the storage variable.
$data modify storage lunareclipse:utils temp_values.random_value."$(command)".value set from storage lunareclipse:utils temp_values.random_value."$(command)".array[$(index)]