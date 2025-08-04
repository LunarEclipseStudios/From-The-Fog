# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run with the information.

# Store the command, target and the path somewhere that it can be used later.
$data modify storage lunareclipse:utils temp_values.random_value."$(command)".target set value "$(target)"
$data modify storage lunareclipse:utils temp_values.random_value."$(command)".path set value "$(path)"
$data modify storage lunareclipse:utils temp_values.random_value."$(command)".command set value "$(command)"
$data modify storage lunareclipse:utils temp_values.random_value."$(command)".array set from storage $(target) $(path)

# Run the random value system with our array.
$function lunareclipse.utils:random_value_storage/execute with storage lunareclipse:utils temp_values.random_value."$(command)"

# function lunareclipse.utils:random_value_storage/start {target:"lunareclipse.watching:config_options",path:"config.pages.1",command:"lunareclipse.utils:random_value_storage/test"}