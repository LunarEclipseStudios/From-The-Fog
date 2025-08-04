# List of variables used:
# "type" - The type of Herobrine sighting being summoned.
# "countdown" - The amount of time in seconds until the next sighting spawns.

# Schedule the queued sighting with the correct time.
$schedule function lunareclipse.watching:sightings/spawning_rules/summon_sighting $(countdown)s

# Send the debug message.
$function lunareclipse.watching:debug/message {message: "Sighting Scheduled", status: "1", info: {"Sighting Type": "$(type)", "Time Until Sighting":"$(countdown)s"}, info_list: ["Sighting Type", "Time Until Sighting"]}