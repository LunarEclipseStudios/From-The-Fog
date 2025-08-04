# List of variables used:
# "array" - The array that will contain the values that can be randomized.
# "command" - The command that is meant to run with the information.
# "length" - The length of the array.

# Roll the random number.
$execute store result storage lunareclipse:utils temp_values.random_value."$(command)".index int 1 run random value 0..$(length)