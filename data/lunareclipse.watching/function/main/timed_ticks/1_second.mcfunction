# Reschedule the function.
schedule function lunareclipse.watching:main/timed_ticks/1_second 1s

# If give him control is disabled run the on disabled function.
execute if data storage lunareclipse.watching:global_values give_him_control if data storage lunareclipse.watching:config_options {options:{give_him_control:"false"}} run function lunareclipse.watching:give_him_control/cleanup
# Init function.
execute unless data storage lunareclipse.watching:global_values give_him_control if data storage lunareclipse.watching:config_options {options:{give_him_control:"true"}} run function lunareclipse.watching:give_him_control/init

# If the started events scoreboard is set to 1 and if there is no current spawn timer rolled and there is no current sighting then roll a spawn timer.
execute unless data storage lunareclipse.watching:global_values sightings.type if score started_events watching.global_values matches 1 unless score sighting_timer_rolled watching.global_values matches 1 store result score sighting_timer_rolled watching.global_values run function lunareclipse.watching:sightings/spawning_rules/roll_spawn_timer

# Store the current in-game day in a scoreboard.
execute store result score current_day watching.global_values run time query day
# Check if the current day matches the one we logged last and if it doesn't then randomize the config. (Only if Give Him Control is enabled.)
execute if data storage lunareclipse.watching:config_options {options:{give_him_control:"true"}} unless score logged_day watching.global_values = current_day watching.global_values run function lunareclipse.watching:give_him_control/check_day
# Log the previous checked day.
scoreboard players operation logged_day watching.global_values = current_day watching.global_values

# Check if the haunting delay period is over or not. (Also requires the current day scoreboard.)
execute unless score started_events watching.global_values matches 1 run function lunareclipse.watching:shrine/haunting_delay/check_day

# Get the amount of time the player has played for.
execute as @a run function lunareclipse.watching:advancements/get_day_count

# Check for a player within the radius of a structure.
execute as @e[type=minecraft:marker,tag=watching.structure_marker] at @s if entity @a[distance=..16] run function lunareclipse.watching:advancements/found_structure with entity @s data

# If the world has advancements enabled then give every player the root advancement.
execute if data storage lunareclipse.watching:config_options {options:{advancements:"true"}} run advancement grant @a only from_the_fog:root
# If the world does not have advancements, then remove all the advancements.
execute unless data storage lunareclipse.watching:config_options {options:{advancements:"true"}} run advancement revoke @a from from_the_fog:root