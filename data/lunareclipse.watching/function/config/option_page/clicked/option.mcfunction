# List of variables used:
# "option" - The option page being changed.
# "value" - The value that the option is being changed to.

# If the option is locked then prevent the rest of the command from running.
$execute if data storage lunareclipse.watching:config_options {locked:["$(option)"]} run return run playsound minecraft:block.note_block.pling master @p[tag=watching.opened_config] ~ ~ ~ 1 0.5 1

# Change the value of the setting.
$data modify storage lunareclipse.watching:config_options options.$(option) set value "$(value)"

# Update the option.
$execute as @e[type=minecraft:item_display,distance=..7,tag=watching.$(option)] at @s run data modify entity @s item.components."minecraft:item_model" set value "lunareclipse.watching:ui/config/settings/slot_off"
data modify entity @s item.components."minecraft:item_model" set value "lunareclipse.watching:ui/config/settings/slot_on"

# Play a sound.
playsound minecraft:block.lever.click master @p[tag=watching.opened_config] ~ ~ ~ 1 1 1