# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.
# "value" - The value from the array position we're in.
# "page" - The page of the config that this is being run on. (Added for this system.)

# Add one to the page assembly scoreboard, this helps keep track of what line to place our options on.
execute unless score config_page_assembly watching.global_values matches 0.. run scoreboard players set config_page_assembly watching.global_values 1

# Place this on the first line.
$execute if score config_page_assembly watching.global_values matches 13..16 positioned ^-$(index) ^ ^ positioned ^$(index) ^ ^ positioned ~ ~-3 ~ run function lunareclipse.watching:config/option_page/create_option with storage lunareclipse.watching:config_options config.settings.option.$(value).$(page)
$execute if score config_page_assembly watching.global_values matches 9..12 positioned ^-$(index) ^ ^ positioned ^$(index) ^ ^ positioned ~ ~-2 ~ run function lunareclipse.watching:config/option_page/create_option with storage lunareclipse.watching:config_options config.settings.option.$(value).$(page)
$execute if score config_page_assembly watching.global_values matches 5..8 positioned ^-$(index) ^ ^ positioned ^$(index) ^ ^ positioned ~ ~-1 ~ run function lunareclipse.watching:config/option_page/create_option with storage lunareclipse.watching:config_options config.settings.option.$(value).$(page)
$execute if score config_page_assembly watching.global_values matches 1..4 positioned ^$(index) ^ ^ run function lunareclipse.watching:config/option_page/create_option with storage lunareclipse.watching:config_options config.settings.option.$(value).$(page)