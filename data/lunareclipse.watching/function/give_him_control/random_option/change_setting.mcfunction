# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.
# "value" - The value from the array position we're in.

# Manually insert the option ID into the function.
$data modify storage lunareclipse:utils temp_values.random_value."lunareclipse.watching:give_him_control/random_option/set_value".option set value "$(value)"
# Roll a random value for the option.
$function lunareclipse.utils:random_value_storage/start {target:"lunareclipse.watching:global_values",path:"give_him_control.options.$(value)",command:"lunareclipse.watching:give_him_control/random_option/set_value"}