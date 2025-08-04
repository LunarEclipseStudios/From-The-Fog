# Determine the variant of the mob.
execute if biome ~ ~ ~ #minecraft:spawns_warm_variant_farm_animals run return run data modify storage lunareclipse.watching:global_values sightings.haunted_herd.variant set value "warm"
execute if biome ~ ~ ~ #minecraft:spawns_cold_variant_farm_animals run return run data modify storage lunareclipse.watching:global_values sightings.haunted_herd.variant set value "cold"
data modify storage lunareclipse.watching:global_values sightings.haunted_herd.variant set value "temperate"