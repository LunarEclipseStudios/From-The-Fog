# List of variables used:
# "id" - The id of the skin.
# "credit" - The name of the person who created the skin.
# "custom" - Defines whether or not the skin is custom.
# "namespace" - The namespace the skin is from.
# "default" - The default skin that the variant will use.
# "variants" - An array of skins that this skin can turn to.

# Store the info.
$data modify storage lunareclipse.watching:global_values skin_library.skin.$(id).skin set value "$(id)" 
$data modify storage lunareclipse.watching:global_values skin_library.skin.$(id).credit set value "$(credit)"
$data modify storage lunareclipse.watching:global_values skin_library.skin.$(id).custom set value "$(custom)"
$data modify storage lunareclipse.watching:global_values skin_library.skin.$(id).namespace set value "$(namespace)"
$data modify storage lunareclipse.watching:global_values skin_library.skin.$(id).variants set value $(variants)
$data modify storage lunareclipse.watching:global_values skin_library.skin.$(id).default set value "$(default)" 

# Save a list of the skin packs.
$execute unless data storage lunareclipse.watching:global_values {skin_library:{custom_skin:{pack_list:["$(namespace)"]}}} run function lunareclipse.utils:value_check/start {base:"true",dynamic:"$(custom)",command:"data modify storage lunareclipse.watching:global_values skin_library.custom_skin.pack_list append value '$(namespace)'"}

# If the skin is custom save it to a list.
$function lunareclipse.utils:value_check/start {base:"true",dynamic:"$(custom)",command:"data modify storage lunareclipse.watching:global_values skin_library.custom_skin.packs.'$(namespace)' append value '$(id)'"}

# function lunareclipse.watching:sightings/skin_library/define_variant {\
# id: "variant_test",\
# namespace: "lunareclipse.watching",\
# credit: "Bret06 & Zwaluw",\
# custom: "false",\
# default: "invisible_man",\
# variants: ["invisible_man","scarecrow"],\
# }