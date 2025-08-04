# List of variables used:
# "starting_number" - The first number in the range.
# "ending_number" - The ending number in the range.
# "command" - The command that is meant to run with the information.
# "value" - The random number we got from the range.
# "structure" - The structure we're attempting to create. (Added just for this system.)

# Store the selected structure in a storage variable.
$data modify storage lunareclipse.watching:global_values structures.$(structure).selected.x set from storage lunareclipse.watching:global_values structures.$(structure).positions[$(value)].x
$data modify storage lunareclipse.watching:global_values structures.$(structure).selected.y set from storage lunareclipse.watching:global_values structures.$(structure).positions[$(value)].y
$data modify storage lunareclipse.watching:global_values structures.$(structure).selected.z set from storage lunareclipse.watching:global_values structures.$(structure).positions[$(value)].z
$data modify storage lunareclipse.watching:global_values structures.$(structure).selected.x_center set from storage lunareclipse.watching:global_values structures.$(structure).positions[$(value)].x_center
$data modify storage lunareclipse.watching:global_values structures.$(structure).selected.y_center set from storage lunareclipse.watching:global_values structures.$(structure).positions[$(value)].y_center
$data modify storage lunareclipse.watching:global_values structures.$(structure).selected.z_center set from storage lunareclipse.watching:global_values structures.$(structure).positions[$(value)].z_center

# Remove the structure from the array.
$data remove storage lunareclipse.watching:global_values structures.$(structure).positions[$(value)]