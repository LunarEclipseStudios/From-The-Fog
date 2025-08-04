# List of variables used:
# "part" - The part of the model to update.

# Set a scoreboard to let the model know that the animation has updated back to 0.
$scoreboard players remove $(part)_update watching.animations 1

# Set the interpolation.
$execute store result entity @s interpolation_duration int 1 run scoreboard players get $(part)_interpolation watching.animations
data modify entity @s start_interpolation set value -1

# Rotate the model part.
$execute store result entity @s transformation.left_rotation[0] float 0.01 run scoreboard players get $(part)_axis_x watching.animations
$execute store result entity @s transformation.left_rotation[1] float 0.01 run scoreboard players get $(part)_axis_y watching.animations
$execute store result entity @s transformation.left_rotation[2] float 0.01 run scoreboard players get $(part)_axis_z watching.animations