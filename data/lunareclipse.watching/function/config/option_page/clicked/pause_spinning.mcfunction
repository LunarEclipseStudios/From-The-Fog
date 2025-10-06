# Play a sound.
playsound minecraft:block.lever.click master @p[tag=watching.opened_config] ~ ~ ~ 1 1 1

# Update the model.
execute if data storage lunareclipse.watching:config_options {config:{preview_spinning:"false"}} run data modify entity @s item.components."minecraft:item_model" set value "lunareclipse.watching:ui/config/settings/spinning_true"
execute if data storage lunareclipse.watching:config_options {config:{preview_spinning:"true"}} run data modify entity @s item.components."minecraft:item_model" set value "lunareclipse.watching:ui/config/settings/spinning_false"

# Change the value of the setting.
execute if data storage lunareclipse.watching:config_options {config:{preview_spinning:"true"}} run return run data modify storage lunareclipse.watching:config_options config.preview_spinning set value "false"
execute if data storage lunareclipse.watching:config_options {config:{preview_spinning:"false"}} run return run data modify storage lunareclipse.watching:config_options config.preview_spinning set value "true"