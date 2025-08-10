# List of variables used:
# "previous_sighting" - The previous sighting type.

# Increment the retry limit scoreboard.
scoreboard players add sighting_retry_limit watching.global_values 1

# Create the sighting.
$function lunareclipse.watching:sightings/presets/$(previous_sighting)