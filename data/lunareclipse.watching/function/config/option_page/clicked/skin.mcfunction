# List of variables used:
# "option" - The option page being changed.
# "operation" - The value that the option is being changed to.
# "skin" - The skin being added/removed.

# Change the value of the setting.
$function lunareclipse.watching:config/option_page/clicked/skin/$(operation) {option: "$(option)", operation: "$(operation)", skin: "$(skin)"}

# Update the option.
$execute if data storage lunareclipse.watching:config_options {options:{herobrine_skin:{list:["$(skin)"]}}} run data modify entity @s item.components."minecraft:custom_data".operation set value "remove"
$execute if data storage lunareclipse.watching:config_options {options:{herobrine_skin:{list:["$(skin)"]}}} run data modify entity @s item.components."minecraft:item_model" set value "lunareclipse.watching:ui/config/settings/skin_on"

$execute unless data storage lunareclipse.watching:config_options {options:{herobrine_skin:{list:["$(skin)"]}}} run data modify entity @s item.components."minecraft:custom_data".operation set value "add"
$execute unless data storage lunareclipse.watching:config_options {options:{herobrine_skin:{list:["$(skin)"]}}} run data modify entity @s item.components."minecraft:item_model" set value "lunareclipse.watching:ui/config/settings/skin_off"

# Play a sound.
playsound minecraft:item.armor.equip_leather master @p[tag=watching.opened_config] ~ ~ ~ 1 1 1

# Summon the hoebrine if enabled.
execute if data storage lunareclipse.watching:config_options {options:{hoebrine_returns:"true"}} run return run function lunareclipse.watching:config/option_page/clicked/skin/update_display {skin:"hoebrine"}
# Update the skin display.
$function lunareclipse.watching:config/option_page/clicked/skin/update_display {skin:"$(skin)"}