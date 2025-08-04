# Add the xyz data to the temp object.
$execute store result storage lunareclipse.watching:global_values block_positions.$(block_tag).temp.x int 1 run data get entity @s Pos[0]
$execute store result storage lunareclipse.watching:global_values block_positions.$(block_tag).temp.y int 1 run data get entity @s Pos[1]
$execute store result storage lunareclipse.watching:global_values block_positions.$(block_tag).temp.z int 1 run data get entity @s Pos[2]
$execute store result storage lunareclipse.watching:global_values block_positions.$(block_tag).temp.yaw float 1 run data get entity @p Rotation[0]
$execute store result storage lunareclipse.watching:global_values block_positions.$(block_tag).temp.pitch float 1 run data get entity @p Rotation[1]
# Kill the marker.
kill @s