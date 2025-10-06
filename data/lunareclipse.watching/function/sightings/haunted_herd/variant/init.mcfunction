# List of variables used:
# "array" - The array that will contain the values that can be randomized.
# "command" - The command that is meant to run with the information.
# "length" - The length of the array.
# "index" - The position in the array that was chosen.
# "value" - The value that was randomly selected.

# Set the mob that is being summoned.
$data modify storage lunareclipse.watching:global_values sightings.haunted_herd.mob set value "$(value)"

# Set the variant of the mob.
execute if data storage lunareclipse.watching:global_values {sightings:{haunted_herd:{mob:"pig"}}} run function lunareclipse.watching:sightings/haunted_herd/variant/select {tag:"farm_animals"}
execute if data storage lunareclipse.watching:global_values {sightings:{haunted_herd:{mob:"cow"}}} run function lunareclipse.watching:sightings/haunted_herd/variant/select {tag:"farm_animals"}
execute if data storage lunareclipse.watching:global_values {sightings:{haunted_herd:{mob:"frog"}}} run function lunareclipse.watching:sightings/haunted_herd/variant/select {tag:"frogs"}

# Set the skin.
function lunareclipse.watching:sightings/haunted_herd/variant/set_skin with storage lunareclipse.watching:global_values sightings.haunted_herd