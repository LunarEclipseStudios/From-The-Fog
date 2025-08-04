# List of variables used:
# "rotation" - The amount that Herobrine should rotate until.
# "increment" - The amount of rotation per tick.
# "command" - The command that will run once the rotation is hit.

# Add the increment to the rotation scoreboard.
$scoreboard players add temp_rotation_increment watching.global_values $(increment)

# Check if the rotation limit has been reached.
$execute if score temp_rotation_increment watching.global_values matches ..$(rotation) run rotate @s ~$(increment) 0

# Remove all the temporary values.
$execute unless score temp_rotation_increment watching.global_values matches $(rotation).. run return 1
data remove storage lunareclipse.watching:global_values temp.sighting_rotation
scoreboard players reset temp_rotation_increment watching.global_values
$$(command)