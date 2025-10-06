# List of variables used:
# "tag" - The biome tag used to determine the type.

# Determine the variant of the mob if it's a farm animal.
$execute if biome ~ ~ ~ #minecraft:spawns_warm_variant_$(tag) run return run data modify storage lunareclipse.watching:global_values sightings.haunted_herd.variant set value "warm"
$execute if biome ~ ~ ~ #minecraft:spawns_cold_variant_$(tag) run return run data modify storage lunareclipse.watching:global_values sightings.haunted_herd.variant set value "cold"

# Set the variant to temperate as a fallback.
data modify storage lunareclipse.watching:global_values sightings.haunted_herd.variant set value "temperate"