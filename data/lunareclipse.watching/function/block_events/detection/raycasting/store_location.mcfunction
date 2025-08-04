# List of variables used:
# "block_tag" - The block tag to be checking for.
# "x"
# "y"
# "z"
# "yaw"
# "pitch"

# Check if the block already exists.
$execute if data storage lunareclipse.watching:global_values {block_positions:{"$(block_tag)":{positions:[{x:$(x),y:$(y),z:$(z)}]}}} run return fail

# Create the object that the data will be stored within.
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).positions prepend value {}
# Add the xyz data to the object.
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).positions[0].x set value $(x)
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).positions[0].y set value $(y)
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).positions[0].z set value $(z)
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).positions[0].yaw set value $(yaw)
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).positions[0].pitch set value $(pitch)