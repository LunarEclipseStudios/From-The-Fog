# List of variables used:
# "base" - The base value that will be checked against our dynamic value.
# "dynamic" - The dynamic value that will changed and be check against our base value.
# "command" - The command to run if the two match.

# Store the base variable somewhere temporarily.
$data modify storage lunareclipse:utils temp_values.value_check."$(command)".base set value "$(base)"

# Now check the dynamic value against it.
$execute if data storage lunareclipse:utils {temp_values:{value_check:{"$(command)":{base:"$(dynamic)"}}}} run $(command)

# Clear the storage variable.
$data remove storage lunareclipse:utils temp_values.value_check."$(command)"

# function lunareclipse.utils:value_check/start {base:"true",dynamic:"true",command:"say Working"}