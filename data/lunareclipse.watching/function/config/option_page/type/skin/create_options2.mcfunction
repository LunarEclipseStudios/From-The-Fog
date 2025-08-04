# List of variables used:
# "index" - The position in the array we are in.
# "value" - The value from the array position we're in.
# "id" - The ID of the setting.
# "spacing" - The spacing between the options.

# Create the options.
$execute if score config_page_assembly watching.global_values matches 16..20 positioned ^-11.25 ^ ^ positioned ^$(spacing) ^ ^ positioned ~ ~-3 ~ run function lunareclipse.watching:config/option_page/type/skin/create_option {id: "$(id)", value:"$(value)"}
$execute if score config_page_assembly watching.global_values matches 11..15 positioned ^-7.5 ^ ^ positioned ^$(spacing) ^ ^ positioned ~ ~-2 ~ run function lunareclipse.watching:config/option_page/type/skin/create_option {id: "$(id)", value:"$(value)"}
$execute if score config_page_assembly watching.global_values matches 6..10 positioned ^-3.75 ^ ^ positioned ^$(spacing) ^ ^ positioned ~ ~-1 ~ run function lunareclipse.watching:config/option_page/type/skin/create_option {id: "$(id)", value:"$(value)"}
$execute if score config_page_assembly watching.global_values matches 1..5 positioned ^$(spacing) ^ ^ positioned ~ ~0.075 ~ run function lunareclipse.watching:config/option_page/type/skin/create_option {id: "$(id)", value:"$(value)"}