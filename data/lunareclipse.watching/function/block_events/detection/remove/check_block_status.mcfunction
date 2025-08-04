# List of variables used:
# "block_tag" - The tag of the block that is being searched for.
# "index" - The position in the array we are in.
# "x"
# "y"
# "z"

# Forceload the block position.
$forceload add $(x) $(z)

# Check if the block exists and if it doesn't remove it.
$execute unless block $(x) $(y) $(z) $(block_tag) run data remove storage lunareclipse.watching:global_values block_positions.$(block_tag).positions[$(index)]

# Remove 1 from the forloop score to allow it to catch-up.
$execute unless block $(x) $(y) $(z) $(block_tag) run scoreboard players remove block_positions.$(block_tag).positions lunareclipse_utils.global_values 1

# Remove the forceload on the block position.
$forceload remove $(x) $(z)