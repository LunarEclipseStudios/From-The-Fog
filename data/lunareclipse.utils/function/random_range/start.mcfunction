# List of variables used:
# "starting_number" - The first number in the range.
# "ending_number" - The ending number in the range.
# "command" - The command that is meant to run with the information.

# Store the command, target and the path somewhere that it can be used later.
$data modify storage lunareclipse:utils temp_values.random_range."$(command)".starting_number set value "$(starting_number)"
$data modify storage lunareclipse:utils temp_values.random_range."$(command)".ending_number set value "$(ending_number)"
$data modify storage lunareclipse:utils temp_values.random_range."$(command)".command set value "$(command)"

# Store the number.
$execute store result storage lunareclipse:utils temp_values.random_range."$(command)".value int 1 run random value $(starting_number)..$(ending_number)

# Run the defined command.
$function $(command) with storage lunareclipse:utils temp_values.random_range."$(command)"

# Remove any values used during the forloop.
$data remove storage lunareclipse:utils temp_values.random_range."$(command)"