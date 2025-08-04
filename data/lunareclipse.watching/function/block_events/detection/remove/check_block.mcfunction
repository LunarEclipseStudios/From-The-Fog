# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.
# "value" - The value from the array position we're in.
# "block_tag" - The tag of the block that is being searched for. (Added just for this loop.)

# Store the data in a storage variable so we can use it all together.
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).temp.block_tag set value "$(block_tag)"
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).temp.index set value "$(index)"
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).temp.x set from storage $(target) $(path)[$(index)].x
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).temp.y set from storage $(target) $(path)[$(index)].y
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).temp.z set from storage $(target) $(path)[$(index)].z

# Using the data from the temp storage variable check if the block exists.
$execute unless data storage lunareclipse.watching:global_values {shrine_block_tag:"$(block_tag)"} run function lunareclipse.watching:block_events/detection/remove/check_block_status with storage lunareclipse.watching:global_values block_positions.$(block_tag).temp
# Shrine version.
$execute if data storage lunareclipse.watching:global_values {shrine_block_tag:"$(block_tag)"} run function lunareclipse.watching:shrine/remove_relight_shrine with storage lunareclipse.watching:global_values block_positions.$(block_tag).temp

# $say Checking $(value) to see if a $(block_tag) is there.