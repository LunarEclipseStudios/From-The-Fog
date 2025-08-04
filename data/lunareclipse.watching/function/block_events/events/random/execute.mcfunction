# List of variables used:
# "option" - The identifier of the mechanic being run.
# "block_tag" - The tag for the block we are checking for.
# "index"
# "x"
# "y"
# "z"
# "yaw"
# "pitch"

# Forceload the block.
$forceload add $(x) $(z)

# Execute at the position.
$execute positioned $(x) $(y) $(z) rotated $(yaw) $(pitch) run function lunareclipse.watching:block_events/events/executables/$(option) with storage lunareclipse.watching:global_values block_positions.$(block_tag).selected

# Remove the forceload.
$forceload remove $(x) $(z)