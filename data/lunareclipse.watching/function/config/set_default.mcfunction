# List of variables used:
# "option" - The option being set.
# "value" - The value that the option is being set to.

# Set the default value.
$execute unless data storage lunareclipse.watching:config_options options.$(option) run data modify storage lunareclipse.watching:config_options options.$(option) set value $(value)