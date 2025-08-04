# List of variables used:
# "index" - The segement that the skin will be added to.
# "skin" - The skin itself.

# Create the segment if it doesn't already exist.
$execute unless data storage lunareclipse.watching:global_values skin_library.custom_skin.packs.temp[$(index)] run data modify storage lunareclipse.watching:global_values skin_library.custom_skin.packs.temp append value []
# Append the skin to the current segment.
$data modify storage lunareclipse.watching:global_values skin_library.custom_skin.packs.temp[$(index)] append value "$(skin)"