# List of variables used:
# "day_min"
# "day_max"
# "night_min"
# "night_max"

# function lunareclipse.watching:sightings/spawning_rules/set_spawn_timer {day_min: 5, day_max: 10, night_min: 0, night_max: 5}

# Store the frequency multiplier inside of a scoreboard so it can have math applied using it.
execute store result score activity_multiplier watching.global_values run data get storage lunareclipse.watching:config_options options.activity_multiplier
# Roll the timer.
$execute store result score sighting_countdown watching.global_values run random value $(day_min)..$(day_max)
$execute if predicate lunareclipse.watching:checks/is_night store result score sighting_countdown watching.global_values run random value $(night_min)..$(night_max)
# Divide the rolled number by our frequency multiplier.
scoreboard players operation sighting_countdown watching.global_values /= activity_multiplier watching.global_values
# Store the countdown timer in a storage variable.
execute store result storage lunareclipse.watching:global_values sightings.queued_sighting.countdown int 1 run scoreboard players get sighting_countdown watching.global_values

# Clear the variables.
scoreboard players reset activity_multiplier watching.global_values
scoreboard players reset sighting_countdown watching.global_values