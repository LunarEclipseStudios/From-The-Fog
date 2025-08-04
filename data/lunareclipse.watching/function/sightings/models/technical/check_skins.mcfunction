# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.
# "value" - The value from the array position we're in.

# Check if the skin still exists.
$execute if data storage lunareclipse.watching:global_values skin_library.skin.$(value) run return 1

# If the skin doesn't exist then remove it from the selected skins.
$data remove storage lunareclipse.watching:config_options options.herobrine_skin.list[$(index)]
# Remove 1 from the index to allow the forloop to catch up with us removing it.
$scoreboard players add $(path) lunareclipse_utils.global_values 1

# If the skin list is empty then place the default skin inside of it.
execute if data storage lunareclipse.watching:config_options {options:{herobrine_skin:{list:[]}}} run data modify storage lunareclipse.watching:config_options options.herobrine_skin.list prepend value "default"