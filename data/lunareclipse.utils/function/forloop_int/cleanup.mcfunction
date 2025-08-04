# List of variables used:
# "command" - The command that is meant to run on each item in the loop.

# Remove any values used during the forloop.
$data remove storage lunareclipse:utils temp_values.forloop_int."$(command)"
$scoreboard players reset $(command) lunareclipse_utils.global_values