# If the player is in the end, then summon a lurking sighting.
execute if dimension minecraft:the_end run return run function lunareclipse.watching:sightings/sighting {type:"lurking", position: "lurking", max_distance:128, spot_fov: 66, jumpscare: "true", light_reactant: "false", despawn_timer:30, sneaky_strike: "false", custom: "false"}

# If the player is in the nether, then summon a dwelling sighting.
execute if dimension minecraft:the_nether run return run function lunareclipse.watching:sightings/presets/dwelling

# Run the sighting function with the lurking parameters if the player is not in a cave.
execute unless predicate lunareclipse.watching:checks/is_underground run return run function lunareclipse.watching:sightings/sighting {type:"lurking", position: "lurking", max_distance:128, spot_fov: 66, jumpscare: "true", light_reactant: "false", despawn_timer:30, sneaky_strike: "false", custom: "false"}

# If the player is in a cave then summon a dwelling sighting.
execute if predicate lunareclipse.watching:checks/is_underground run function lunareclipse.watching:sightings/presets/dwelling