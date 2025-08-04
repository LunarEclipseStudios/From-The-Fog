# If the player is in the end, then summon a stalking sighting.
execute if dimension minecraft:the_end run return run function lunareclipse.watching:sightings/presets/stalking

# If the player is in the nether, then summon a dwelling sighting.
execute if dimension minecraft:the_nether run return run function lunareclipse.watching:sightings/sighting {type:"dwelling", position: "dwelling", max_distance:64, spot_fov: 75, jumpscare: "true", light_reactant: "false", despawn_timer:30, sneaky_strike: "true", custom: "false"}

# Run the sighting function with the dwelling parameters if the player is still in a cave.
execute if predicate lunareclipse.watching:checks/is_underground run function lunareclipse.watching:sightings/sighting {type:"dwelling", position: "dwelling", max_distance:64, spot_fov: 75, jumpscare: "true", light_reactant: "false", despawn_timer:30, sneaky_strike: "true", custom: "false"}

# If the player is not in a cave then spawn a stalking sighting.
execute unless predicate lunareclipse.watching:checks/is_underground run function lunareclipse.watching:sightings/presets/stalking