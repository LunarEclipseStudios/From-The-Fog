# Get the type of sign.
execute at @e[type=armor_stand,tag=watching.ai] run function lunareclipse.watching:signs/get_type
# Make him hold the type of sign.
function lunareclipse.watching:sightings/item/presets/sign2 with storage lunareclipse.watching:global_values signs.temp