# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "array" - The array that will contain the values that can be randomized.
# "command" - The command that is meant to run with the information.
# "length" - The length of the array.
# "index" - The position in the array that was chosen.
# "value" - The value that was randomly selected.
# "option" - The option being changed. (Added just for this sequence.)

# $say $(option) is now set to $(value)
# Change the config option.
$data modify storage lunareclipse.watching:config_options options.$(option) set value "$(value)"

# Log it.
$function lunareclipse.watching:debug/message {message: "Config Option Changed", status: "1", info: {"Option": "$(option)", "New Value": "$(value)"}, info_list: ["Option", "New Value"]}