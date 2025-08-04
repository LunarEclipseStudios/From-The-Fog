# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.
# "value" - The value from the array position we're in.
# "id" - The ID of the setting. (Added specially for this system, check config/type/option for more detail.)

# Add 1 to the scoreboard to make the text drop a line.
scoreboard players add config_page_assembly watching.global_values 1

# Create the options.
$execute if score config_page_assembly watching.global_values matches 13..19 positioned ^ ^ ^ positioned ^$(index) ^ ^ positioned ~ ~0.075 ~ run function lunareclipse.watching:config/option_page/type/option/create_option {id: "$(id)", value:"$(value)"}
$execute if score config_page_assembly watching.global_values matches 9..12 positioned ^ ^ ^ positioned ^$(index) ^ ^ positioned ~ ~0.075 ~ run function lunareclipse.watching:config/option_page/type/option/create_option {id: "$(id)", value:"$(value)"}
$execute if score config_page_assembly watching.global_values matches 5..8 positioned ^ ^ ^ positioned ^$(index) ^ ^ positioned ~ ~0.075 ~ run function lunareclipse.watching:config/option_page/type/option/create_option {id: "$(id)", value:"$(value)"}
$execute if score config_page_assembly watching.global_values matches 1..4 positioned ^$(index) ^ ^ positioned ~ ~0.075 ~ run function lunareclipse.watching:config/option_page/type/option/create_option {id: "$(id)", value:"$(value)"}