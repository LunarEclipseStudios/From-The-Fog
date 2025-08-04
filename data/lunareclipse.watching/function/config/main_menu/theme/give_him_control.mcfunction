# Change the logo.
data modify entity @e[type=minecraft:item_display,tag=watching.logo,limit=1] item.components."minecraft:item_model" set value "lunareclipse.watching:ui/text_red"
# Remove the next page arrow.
kill @e[type=#lunareclipse.watching:config,tag=watching.next_arrow]
# Change the background.
data modify entity @e[type=minecraft:item_display,tag=watching.background,limit=1] item.components."minecraft:item_model" set value "lunareclipse.watching:ui/config/main_menu_glitched"
# Change the switch to be the herobrine one.
data modify entity @e[type=minecraft:item_display,tag=watching.button,limit=1] item.components."minecraft:item_model" set value "lunareclipse.watching:ui/config/settings/give_him_control_switch"
# Change the text on the page.
data modify entity @e[type=minecraft:text_display,tag=watching.display_name,limit=1] text set value {"translate":"config.setting.give_him_control_alt.display_name","color":"red"}
data modify entity @e[type=minecraft:text_display,tag=watching.description,limit=1] text set value {"translate":"config.setting.give_him_control_alt.description","color":"red","obfuscated":true}
# Make the text rotate.
data modify entity @e[type=minecraft:text_display,tag=watching.display_name,limit=1] transformation.scale set value [1.5f,1.5f,1.5f]
data modify entity @e[type=minecraft:text_display,tag=watching.description,limit=1] transformation.left_rotation set value [0.13f,0.3f,0.13f,1f]

# Display the caution caption multiple times.
function lunareclipse.watching:shrine/caution_caption/init
function lunareclipse.watching:shrine/caution_caption/init
function lunareclipse.watching:shrine/caution_caption/init
function lunareclipse.watching:shrine/caution_caption/init