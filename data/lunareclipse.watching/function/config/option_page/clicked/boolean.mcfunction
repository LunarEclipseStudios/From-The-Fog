# List of variables used:
# "option" - The option page being changed.
# "value" - The value that the option is being changed to.

# If the option is locked then prevent the rest of the command from running.
$execute if data storage lunareclipse.watching:config_options {locked:["$(option)"]} run return run playsound minecraft:block.note_block.pling master @p[tag=watching.opened_config] ~ ~ ~ 1 0.5 1

# Change the value of the setting.
$data modify storage lunareclipse.watching:config_options options.$(option) set value "$(value)"

# Update the option.
$execute if data storage lunareclipse.watching:config_options {options:{$(option):"true"}} run data modify entity @s item.components."minecraft:custom_data".value set value "false"
$execute if data storage lunareclipse.watching:config_options {options:{$(option):"true"}} run data modify entity @s item.components."minecraft:item_model" set value "lunareclipse.watching:ui/config/settings/switch_on"

$execute if data storage lunareclipse.watching:config_options {options:{$(option):"false"}} run data modify entity @s item.components."minecraft:custom_data".value set value "true"
$execute if data storage lunareclipse.watching:config_options {options:{$(option):"false"}} run data modify entity @s item.components."minecraft:item_model" set value "lunareclipse.watching:ui/config/settings/switch_off"

# Play a sound based on the option.
$playsound lunareclipse.watching:config.setting.$(option).$(value) master @p[tag=watching.opened_config]


# If give him control is disabled, check if the main menu is open and reset the page.
execute if entity @e[type=minecraft:item_display,tag=watching.main_menu] if data storage lunareclipse.watching:config_options {options:{give_him_control:"false"}} run execute as @e[type=marker,tag=watching.pivot] at @s run function lunareclipse.watching:config/next_page/main_menu {page:3}

# If give him control is enabled run the following:
execute unless data storage lunareclipse.watching:config_options {options:{give_him_control:"true"}} run return 1

# Set the theme.
function lunareclipse.watching:config/main_menu/theme/give_him_control

# Play the spooky sounds.
playsound minecraft:entity.elder_guardian.curse master @a[distance=..15] ~ ~ ~ 1 0.1
playsound minecraft:ambient.cave master @a[distance=..15] ~ ~ ~ 1 0.25
playsound lunareclipse.watching:events.sudden_scare.crash master @a[distance=..15] ~ ~ ~ 0.25 0.25

# Make him temporaily more active.
function lunareclipse.watching:utils/activity_multiplier/set {value:6,delay:360,event_timer:150}

# Spawn a sighting behind the player.
execute as @p[distance=..15] at @s run function lunareclipse.watching:sightings/presets/creeping
