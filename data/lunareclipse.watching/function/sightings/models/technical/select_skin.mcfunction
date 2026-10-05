# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "array" - The array that will contain the values that can be randomized.
# "command" - The command that is meant to run with the information.
# "length" - The length of the array.
# "index" - The position in the array that was chosen.
# "value" - The value that was randomly selected.

# Store the selected skin in a storage variable.
$data modify storage lunareclipse.watching:config_options options.herobrine_skin.selected set value "$(value)"

# Check if the skin is a variant and if it is then randomly grab a skin from it's variant list.
$execute if data storage lunareclipse.watching:global_values skin_library.skin.$(value).variants run function lunareclipse.utils:random_value_storage/start {target:"lunareclipse.watching:global_values",path:"skin_library.skin.$(value).variants",command:"lunareclipse.watching:sightings/models/technical/select_skin"}