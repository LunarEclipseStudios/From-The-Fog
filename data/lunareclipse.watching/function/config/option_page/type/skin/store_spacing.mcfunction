# List of variables used:
# "index" - The position in the array we are in.
# "id" - The ID of the setting.
# "value" - The value from the array position we're in.

# Store the spacing variable based on the amount I want the options split.
$data modify storage lunareclipse.watching:config_options temp.$(id).id set value "$(id)"
$data modify storage lunareclipse.watching:config_options temp.$(id).value set value "$(value)"
$execute store result storage lunareclipse.watching:config_options temp.$(id).spacing float 0.75 run return $(index)