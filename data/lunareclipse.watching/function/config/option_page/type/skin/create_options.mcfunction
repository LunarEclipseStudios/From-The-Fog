# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.
# "value" - The value from the array position we're in.
# "id" - The ID of the setting. (Added specially for this system, check config/type/option for more detail.)

# Add 1 to the scoreboard to make the text drop a line.
scoreboard players add config_page_assembly watching.global_values 1

# Save the spacing data for later.
$function lunareclipse.watching:config/option_page/type/skin/store_spacing {id:"$(id)", index: $(index), value: "$(value)"}

# Create the options.
$function lunareclipse.watching:config/option_page/type/skin/create_options2 with storage lunareclipse.watching:config_options temp.$(id)
