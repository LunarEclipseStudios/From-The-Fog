# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.

# Remove any values used during the forloop.
$data remove storage lunareclipse:utils temp_values.forloop."$(path)"
$scoreboard players reset $(path) lunareclipse_utils.global_values