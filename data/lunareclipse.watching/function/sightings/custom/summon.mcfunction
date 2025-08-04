# WARNINGS
# If you need to remove Herobrine run this command: "/function lunareclipse.watching:sightings/models/remove" (DO NOT /KILL HIM.)
# Herobrine sighting events are paused while a custom Herobrine exists.

# List of variables:
# "position" - The system that will be used to spread Herobrine. ["A function from the lunareclipse.watching:sightings/spread_position folder."]
# "max_distance" - The max distance that the player can be from Herobrine being he disappears. ["NUMBER"]
# "vanishing_delay" - The amount of time before Herobrine disappears, cannot be 0. (If you want 0 do 0.1. Measured in seconds.) ["NUMBER"]
# "spot_fov" - The fov that the player can spot Herobrine from. (Set this to 0, if you don't want him to disappear.) ["NUMBER"]
# "jumpscare" - Defines whether or not Herobrine can jumpscare the player if they get too close. ["true", "false"]
# "despawn_timer" - Defines the amount of time until Herobrine despawns after the sighting. (Measured in seconds.) ["NUMBER"]
# "face_player" - Defines whether or not Herobrine will face the nearest player. ["true", "false"]
# "light_reactant" - Defines whether or not Herobrine is reactant to light levels. ["true", "false"]
# "sneaky_strike" - Defines whether or not Herobrine can punch the player if he stays behind them for a while without them noticing. ["true", "false"] (ONLY WORKS WHEN SNEAKY STRIKE IS ENABLED.)

# Update the config option for the custom sighting type.
$data modify storage lunareclipse.watching:config_options options.custom_vanishing_delay set value "$(vanishing_delay)"

# Run the sighting function with the creeping parameters.
$function lunareclipse.watching:sightings/sighting {type:"custom", position: "$(position)", max_distance:$(max_distance), spot_fov: $(spot_fov), jumpscare: "$(jumpscare)", light_reactant: "$(light_reactant)", despawn_timer:$(despawn_timer), sneaky_strike: "$(sneaky_strike)", custom: "true"}

# Define whether or not Herobrine will face the player.
$data modify storage lunareclipse.watching:global_values sightings.face_player set value "$(face_player)"

# Clear the sighting schedule.
schedule clear lunareclipse.watching:sightings/spawning_rules/summon_sighting

# Example command:
# /function lunareclipse.watching:sightings/custom/summon {position:"creeping", max_distance:10, vanishing_delay:0.5, spot_fov:80, jumpscare:"true", despawn_timer:15, face_player:"true", light_reactant: "false", sneaky_strike: "false"}