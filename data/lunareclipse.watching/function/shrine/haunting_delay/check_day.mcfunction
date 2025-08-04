# Store the haunting delay day amount in a scoreboard.
execute store result score haunting_delay watching.global_values run data get storage lunareclipse.watching:config_options options.haunting_delay
# Check if the period is over or not. If it is then set started events to 1 if it's then reset started events.
execute if score current_day watching.global_values >= haunting_delay watching.global_values run function lunareclipse.watching:start_events

# Reset the temp scoreboards.
scoreboard players reset current_day watching.global_values
scoreboard players reset haunting_delay watching.global_values