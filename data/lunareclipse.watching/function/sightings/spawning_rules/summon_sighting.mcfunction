# Stop the flow of the code based on the time window Herobrine is meant to spawn in. - The cleanup function is used because it can schedule a new sighting.
execute if data storage lunareclipse.watching:config_options {options:{sighting_window:"day"}} if predicate lunareclipse.watching:checks/is_night run return run function lunareclipse.watching:sightings/cleanup
execute if data storage lunareclipse.watching:config_options {options:{sighting_window:"night"}} unless predicate lunareclipse.watching:checks/is_night run return run function lunareclipse.watching:sightings/cleanup
execute if data storage lunareclipse.watching:config_options {options:{sighting_window:"rain"}} unless predicate lunareclipse.watching:checks/is_raining run return run function lunareclipse.watching:sightings/cleanup

# If the started events scoreboard is set to 1 then run the function to summon the queued sighting.
execute unless score started_events watching.global_values matches 1 run return run function lunareclipse.watching:sightings/cleanup 

# Summon the sighting.
function lunareclipse.watching:sightings/spawning_rules/select_sighting with storage lunareclipse.watching:global_values sightings.queued_sighting