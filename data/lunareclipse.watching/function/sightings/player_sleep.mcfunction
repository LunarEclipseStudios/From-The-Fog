# Remove the advancement from the player.
advancement revoke @s only lunareclipse.watching:technical/player_sleep

# If started events is disabled don't roll.
execute unless score started_events watching.global_values matches 1 run return fail

# Decide whether or not a nightmare will start.
execute if data storage lunareclipse.watching:config_options {options:{sighting_frequency:"common"}} store result score nightmare_roll watching.global_values run random value 1..25
execute if data storage lunareclipse.watching:config_options {options:{sighting_frequency:"default"}} store result score nightmare_roll watching.global_values run random value 1..100
execute if data storage lunareclipse.watching:config_options {options:{sighting_frequency:"rare"}} store result score nightmare_roll watching.global_values run random value 1..200
execute if data storage lunareclipse.watching:config_options {options:{sighting_frequency:"scarce"}} store result score nightmare_roll watching.global_values run random value 1..500

# If the nightmare_roll value is 1 then give the player a nightmare.
execute if score nightmare_roll watching.global_values matches 1 run function lunareclipse.watching:sightings/presets/nightmare

# Clear the nightmare_roll scoreboard.
scoreboard players reset nightmare_roll watching.global_values