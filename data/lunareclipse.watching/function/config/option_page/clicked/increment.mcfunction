# List of variables used:
# "option" - The option page being changed.
# "value" - The value that the option is being changed to.

# If the option is locked then prevent the rest of the command from running.
$execute if data storage lunareclipse.watching:config_options {locked:["$(option)"]} run return run playsound minecraft:block.note_block.pling master @p[tag=watching.opened_config] ~ ~ ~ 1 0.5 1

# Store the value in a scoreboard.
$execute store result score $(option)_increment watching.global_values run data get storage lunareclipse.watching:config_options options.$(option)
# Increment the scoreboard by one based on the value.
$scoreboard players $(value) $(option)_increment watching.global_values 1
# If the score is in the negatives set it back to 0.
$execute if score $(option)_increment watching.global_values matches ..-1 run scoreboard players set $(option)_increment watching.global_values 0
# Change the value of the setting.
$execute store result storage lunareclipse.watching:config_options options.$(option) int 1 run scoreboard players get $(option)_increment watching.global_values
# Clear the scoreboard.
$scoreboard players reset $(option)_increment watching.global_values

# Update the option.
$data modify entity @e[type=minecraft:text_display,tag=watching.$(option),tag=watching.display,limit=1] text set value {"nbt":"options.$(option)","storage":"lunareclipse.watching:config_options"}

# Run the function specific to this increment.
$function lunareclipse.watching:config/option_page/clicked/increment/$(option)

# Play a sound.
playsound minecraft:block.lever.click master @p[tag=watching.opened_config] ~ ~ ~ 1 1 1