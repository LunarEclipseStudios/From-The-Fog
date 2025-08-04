# List of variables used:
# "id" - The id of the skin.
# "credit" - The name of the person who created the skin.
# "custom" - Defines whether or not the skin is custom.
# "namespace" - The namespace the skin is from.
# "parts"
# "pivots"

# Store the info.
$data modify storage lunareclipse.watching:global_values skin_library.skin.$(id).skin set value "$(id)" 
$data modify storage lunareclipse.watching:global_values skin_library.skin.$(id).credit set value "$(credit)"
$data modify storage lunareclipse.watching:global_values skin_library.skin.$(id).custom set value "$(custom)"
$data modify storage lunareclipse.watching:global_values skin_library.skin.$(id).namespace set value "$(namespace)"
$data modify storage lunareclipse.watching:global_values skin_library.skin.$(id).parts set value $(parts)
$data modify storage lunareclipse.watching:global_values skin_library.skin.$(id).pivots set value $(pivots)
$data modify storage lunareclipse.watching:global_values skin_library.skin.$(id).pivots.skin set value "$(id)"

# Save a list of the skin packs.
$execute unless data storage lunareclipse.watching:global_values {skin_library:{custom_skin:{pack_list:["$(namespace)"]}}} run function lunareclipse.utils:value_check/start {base:"true",dynamic:"$(custom)",command:"data modify storage lunareclipse.watching:global_values skin_library.custom_skin.pack_list append value '$(namespace)'"}

# If the skin is custom save it to a list.
$function lunareclipse.utils:value_check/start {base:"true",dynamic:"$(custom)",command:"data modify storage lunareclipse.watching:global_values skin_library.custom_skin.packs.'$(namespace)' append value '$(id)'"}