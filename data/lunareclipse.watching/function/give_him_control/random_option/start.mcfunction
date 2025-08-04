# Roll a random option to change.
# function lunareclipse.utils:random_value_storage/start {target:"lunareclipse.watching:global_values",path:"give_him_control.option_list",command:"lunareclipse.watching:give_him_control/random_option/roll_value"}

# Loop through every option assigning a different value.
function lunareclipse.utils:forloop/start {target:"lunareclipse.watching:global_values",path:"give_him_control.option_list",command:"lunareclipse.watching:give_him_control/random_option/change_setting"}