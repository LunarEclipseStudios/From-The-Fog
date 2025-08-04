# Get the rotation of the sign.
execute store result storage lunareclipse.watching:global_values signs.temp.rotation int 1 run function lunareclipse.watching:signs/get_rotation
# Roll a random message.
function lunareclipse.utils:random_range/start {starting_number:1,ending_number:12,command:"lunareclipse.watching:signs/roll_message"}
# Get the type of sign.
function lunareclipse.watching:signs/get_type

# Place the sign.
function lunareclipse.watching:signs/place with storage lunareclipse.watching:global_values signs.temp

# Clear the temporary values.
data remove storage lunareclipse.watching:global_values signs.temp