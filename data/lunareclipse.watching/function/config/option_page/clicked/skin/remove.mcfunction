# List of variables used:
# "option" - The option page being changed.
# "operation" - The value that the option is being changed to.
# "skin" - The skin being added/removed.

# Manaually insert some data into the forloop.
$data modify storage lunareclipse:utils temp_values.forloop."options.herobrine_skin.list".skin set value "$(skin)"

# Loop through all the skins removing the one selected.
function lunareclipse.utils:forloop/start {target:"lunareclipse.watching:config_options",path:"options.herobrine_skin.list",command:"lunareclipse.watching:config/option_page/clicked/skin/find_skin"}

# If the list is empty add default back.
$execute if data storage lunareclipse.watching:config_options {options:{herobrine_skin:{list:[]}}} run data modify storage lunareclipse.watching:config_options options.herobrine_skin.list append value "$(skin)"