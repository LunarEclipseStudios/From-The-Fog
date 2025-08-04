# List of variables used:
# "rotation" - The amount that Herobrine should rotate until.
# "increment" - The amount of rotation per tick.
# "command" - The command that will run once the rotation is hit.

# Save the defined information to a storage variable.
$data modify storage lunareclipse.watching:global_values temp.sighting_rotation.rotation set value $(rotation)
$data modify storage lunareclipse.watching:global_values temp.sighting_rotation.increment set value $(increment)
$data modify storage lunareclipse.watching:global_values temp.sighting_rotation.command set value "$(command)"

# Set the face player value to false.
data modify storage lunareclipse.watching:global_values sightings.face_player set value "false"