# List of variables used:
# "part" - The part of the model to update.
# "axis" - The axis of the model that needs to be updated.
# "rotation" - The angle that the model is being updated to.
# "interpolation" - The amount of time the animation takes to play out.

# Set a scoreboard to let the model know that the animation has updated.
$scoreboard players set $(part)_update watching.animations 2

# Set all of the axis' to 0 by default.
$execute unless score $(part)_axis_$(axis) watching.animations matches 0.. run scoreboard players set $(part)_axis_$(axis) watching.animations 0
# $execute unless score $(part)_axis_y watching.animations matches 0.. run scoreboard players set $(part)_axis_y watching.animations 0
# $execute unless score $(part)_axis_z watching.animations matches 0.. run scoreboard players set $(part)_axis_z watching.animations 0

# Update the scoreboard for the model's interpolation.
$scoreboard players set $(part)_interpolation watching.animations $(interpolation)

# Update the scoreboard for the model's rotation.
$scoreboard players set $(part)_axis_$(axis) watching.animations $(rotation)