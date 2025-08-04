# Rotate the marker into the correct direction.
execute rotated as @p run rotate @s facing ^ ^ ^1
# Add the xyz data to the temp object.
execute store result storage lunareclipse.watching:global_values temp.fearful_footsteps.x int 1 run data get entity @s Pos[0]
execute store result storage lunareclipse.watching:global_values temp.fearful_footsteps.y int 1 run data get entity @s Pos[1]
execute store result storage lunareclipse.watching:global_values temp.fearful_footsteps.z int 1 run data get entity @s Pos[2]
# This is done on init so it doesn't restore.
execute if score fearful_footsteps_temp watching.global_values matches 1 store result storage lunareclipse.watching:global_values temp.fearful_footsteps.yaw int 1 run data get entity @s Rotation[0]
# Kill the marker.
kill @s