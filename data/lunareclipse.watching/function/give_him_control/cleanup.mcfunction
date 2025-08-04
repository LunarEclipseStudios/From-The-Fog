# Set the options back to the way they were.
data modify storage lunareclipse.watching:config_options options set from storage lunareclipse.watching:global_values give_him_control.previous_config
# Remove all the saved Give Him Control info.
data remove storage lunareclipse.watching:global_values give_him_control
# Reintialize the defaults just in-case a new option was added since they enabled give him control.
function lunareclipse.watching:config/initialize_defaults