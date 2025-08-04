# List of variables used:
# "yaw" - The yaw rotation of the fake mob.
# "pitch" - The pitch rotation of the fake mob.
# "mob" - The id of the fake mob.
# "variant" - The biome based variant of the mob.

# Use the rotation to spawn the new mob.
$summon $(mob) ~ ~ ~ {Tags:["watching.previously_haunted_herd"],Rotation:[$(yaw)f,$(pitch)f],variant:"minecraft:$(variant)"}

# Remove the existing fake one.
function lunareclipse.watching:sightings/models/remove