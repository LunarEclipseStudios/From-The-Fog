# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.
# "value" - The value from the array position we're in.
# "skin" - The skin being added/removed. (Added just for this.)

# Store the name of the skin we're checking.
$data modify storage lunareclipse:utils temp_values.forloop."options.herobrine_skin.list".checking_skin set from storage lunareclipse.watching:config_options options.herobrine_skin.list[$(index)]

# Remove the option if it matches the name.
$execute if data storage lunareclipse:utils {temp_values:{forloop:{"options.herobrine_skin.list":{checking_skin:"$(skin)"}}}} run data remove storage lunareclipse.watching:config_options options.herobrine_skin.list[$(index)]