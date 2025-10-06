# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.
# "value" - The value from the array position we're in.

# Check if this is the give him control page.
$function lunareclipse.utils:value_check/start {base:"give_him_control",dynamic:"$(value)",command:"scoreboard players set config_give_him_control watching.global_values 1"}

# Add one to the page assembly scoreboard, this helps keep track of what line to place our options on.
execute unless score config_give_him_control watching.global_values matches 1 run scoreboard players add config_page_assembly watching.global_values 1

# Place this on the first line.
$execute if score config_page_assembly watching.global_values matches 1..4 run function lunareclipse.watching:config/main_menu/create_option {value: "$(value)", index: "$(index)"}
$execute if score config_page_assembly watching.global_values matches 5..8 positioned ^-4 ^ ^ positioned ~ ~-1 ~ run function lunareclipse.watching:config/main_menu/create_option {value: "$(value)", index: "$(index)"}
$execute if score config_page_assembly watching.global_values matches 9..12 positioned ^-8 ^ ^ positioned ~ ~-2 ~ run function lunareclipse.watching:config/main_menu/create_option {value: "$(value)", index: "$(index)"}
$execute if score config_page_assembly watching.global_values matches 13..16 positioned ^-12 ^ ^ positioned ~ ~-3 ~ run function lunareclipse.watching:config/main_menu/create_option {value: "$(value)", index: "$(index)"}

# If give him control is true prevent the rest of the code from executing.
execute unless score config_give_him_control watching.global_values matches 1 run return 0

# Clear the give him control scoreboard.
scoreboard players reset config_give_him_control watching.global_values

# Create the switch.
execute positioned ~ ~-1.25 ~ run function lunareclipse.watching:config/option_page/type/boolean {id: "give_him_control", value: "false", offset: "0", page: 1}
