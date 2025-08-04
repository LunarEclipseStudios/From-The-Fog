# Run the sighting function with the creeping parameters.
execute if block ~ ~ ~ #beds run function lunareclipse.watching:sightings/sighting {type:"nightmare", position: "nightmare", max_distance:16, spot_fov: 60, jumpscare: "false", light_reactant: "false", despawn_timer:60, sneaky_strike: "false", custom: "false"}
# Give the player the advancement if advancements are enabled.
execute if entity @s[advancements={from_the_fog:root=true}] run advancement grant @s only from_the_fog:haunting/experience_nightmare