# List of variables used:
# "block_tag" - The block tag to be checking for.

# Reset our raycast score.
$scoreboard players reset $(block_tag)_raycast watching.global_values

# Store the block tag for later use.
$data modify storage lunareclipse.watching:global_values block_positions.$(block_tag).temp.block_tag set value "$(block_tag)"
# Store the xyz coordinates of the block.
$execute summon minecraft:marker run function lunareclipse.watching:block_events/detection/raycasting/store_marker_location {"block_tag": "$(block_tag)"}
# Store the block location in it's corresponding storage variable.
$function lunareclipse.watching:block_events/detection/raycasting/store_location with storage lunareclipse.watching:global_values block_positions.$(block_tag).temp
# particle minecraft:flame ~ ~ ~ 0 0 0 0.01 100