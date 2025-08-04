# List of variables used:
# "starting_number" - The first number in the range.
# "ending_number" - The ending number in the range.
# "command" - The command that is meant to run with the information.
# "value" - The random number we got from the range.

# Store the selected skin in a storage variable.
$data modify storage lunareclipse.watching:config_options options.herobrine_skin.selected set from storage lunareclipse.watching:config_options options.herobrine_skin.list[$(value)]