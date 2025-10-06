# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.
# "value" - The value from the array position we're in.
# "skin" - The ID of the skin we're assembling. (Added just for this.)

# Add the skin's part data to a temporary value.
$data modify storage lunareclipse.watching:global_values skin_library.temp.assemble.pivot set from storage lunareclipse.watching:global_values skin_library.skin.$(skin).pivots.$(value)
$data modify storage lunareclipse.watching:global_values skin_library.temp.assemble.namespace set from storage lunareclipse.watching:global_values skin_library.skin.$(skin).namespace
data modify storage lunareclipse.watching:global_values skin_library.temp.assemble.emissive set from storage lunareclipse.watching:global_values skin_library.emissive
$data modify storage lunareclipse.watching:global_values skin_library.temp.assemble.part set value "$(value)"
$data modify storage lunareclipse.watching:global_values skin_library.temp.assemble.skin set value "$(skin)"

# Add the current part's pivot to our assembled value.
function lunareclipse.watching:config/option_page/clicked/skin/build_model/define_part with storage lunareclipse.watching:global_values skin_library.temp.assemble

# Clear the temporary values.
data remove storage lunareclipse.watching:global_values skin_library.temp.assemble