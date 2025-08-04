# List of variables used:
# "starting_number" - The first number in the range.
# "ending_number" - The ending number in the range.
# "command" - The command that is meant to run with the information.
# "value" - The random number we got from the range.
# "block_tag" - The tag of the block that this system is being executed on. (Added just for this system.)

# Store the selected block in a storage variable.
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).selected.index set value $(value)
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).selected.x set from storage lunareclipse.watching:global_values block_positions.$(block_tag).positions[$(value)].x
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).selected.y set from storage lunareclipse.watching:global_values block_positions.$(block_tag).positions[$(value)].y
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).selected.z set from storage lunareclipse.watching:global_values block_positions.$(block_tag).positions[$(value)].z
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).selected.yaw set from storage lunareclipse.watching:global_values block_positions.$(block_tag).positions[$(value)].yaw
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).selected.pitch set from storage lunareclipse.watching:global_values block_positions.$(block_tag).positions[$(value)].pitch