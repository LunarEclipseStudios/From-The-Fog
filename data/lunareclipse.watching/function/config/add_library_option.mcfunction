# List of variabless used:
# "list" - The list that the option is being added to.
# "page" - The page that the option is being added to.
# "option" - The option being added to the list.
# "type" - The type of option being added.
# "options" - A list of all the valid options.
# "option_offset" - The position left or right of the options on the config.
# "experimental" - Defines whether or not the option will have the experimental stamp.

# Add the option to the list.
$data modify storage lunareclipse.watching:config_options config.settings.list.$(list).$(page) append value "$(option)"
# Define the option's type.
$data modify storage lunareclipse.watching:config_options config.settings.option.$(option).$(page) set value {id: "$(option)", type: "$(type)", options: $(options), page: $(page), offset: "$(option_offset)", experimental: "$(experimental)"}