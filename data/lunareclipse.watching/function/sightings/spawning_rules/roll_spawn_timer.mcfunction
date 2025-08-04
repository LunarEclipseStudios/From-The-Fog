# Decide which sighting is going to be summoned next.
execute store result score sighting_randomizer watching.global_values run random value 1..7

# If the sighting randomizer lands on a disabled sighting then return fail, inducing a reroll.
execute if score sighting_randomizer watching.global_values matches 1 if data storage lunareclipse.watching:config_options {options:{creeping_sighting:"false"}} run return fail
execute if score sighting_randomizer watching.global_values matches 2..3 if data storage lunareclipse.watching:config_options {options:{stalking_sighting:"false"}} run return fail
execute if score sighting_randomizer watching.global_values matches 4..5 if data storage lunareclipse.watching:config_options {options:{lurking_sighting:"false"}} run return fail
execute if score sighting_randomizer watching.global_values matches 6..7 if data storage lunareclipse.watching:config_options {options:{dwelling_sighting:"false"}} run return fail

# Based on the value selected, schedule the sighting to happen.
execute if score sighting_randomizer watching.global_values matches 1 run data modify storage lunareclipse.watching:global_values sightings.queued_sighting.type set value "creeping"
execute if score sighting_randomizer watching.global_values matches 2..3 run data modify storage lunareclipse.watching:global_values sightings.queued_sighting.type set value "stalking"
execute if score sighting_randomizer watching.global_values matches 4..5 run data modify storage lunareclipse.watching:global_values sightings.queued_sighting.type set value "lurking"
execute if score sighting_randomizer watching.global_values matches 6..7 run data modify storage lunareclipse.watching:global_values sightings.queued_sighting.type set value "dwelling"
# Clear the sighting_randomizer scoreboard.
scoreboard players reset sighting_randomizer watching.global_values

# Determine the spawn timer of the next sighting based on sighting type. - If it's night time then divide each number in the roll by 2.
execute if data storage lunareclipse.watching:config_options {options:{sighting_frequency:"insane"}} run function lunareclipse.watching:sightings/spawning_rules/set_spawn_timer {day_min: 15, day_max: 30, night_min: 8, night_max: 15}
execute if data storage lunareclipse.watching:config_options {options:{sighting_frequency:"common"}} run function lunareclipse.watching:sightings/spawning_rules/set_spawn_timer {day_min: 30, day_max: 60, night_min: 15, night_max: 30}
execute if data storage lunareclipse.watching:config_options {options:{sighting_frequency:"default"}} run function lunareclipse.watching:sightings/spawning_rules/set_spawn_timer {day_min: 60, day_max: 120, night_min: 30, night_max: 60}
execute if data storage lunareclipse.watching:config_options {options:{sighting_frequency:"rare"}} run function lunareclipse.watching:sightings/spawning_rules/set_spawn_timer {day_min: 120, day_max: 240, night_min: 60, night_max: 120}
execute if data storage lunareclipse.watching:config_options {options:{sighting_frequency:"scarce"}} run function lunareclipse.watching:sightings/spawning_rules/set_spawn_timer {day_min: 240, day_max: 360, night_min: 120, night_max: 180}

# Schedule the sighting event.
function lunareclipse.watching:sightings/spawning_rules/schedule_sighting with storage lunareclipse.watching:global_values sightings.queued_sighting

# Mark the spawn timer as rolled.
return 1