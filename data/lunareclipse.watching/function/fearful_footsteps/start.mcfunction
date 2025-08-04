# List of variables used:
# "block" - The type of block the footsteps are happening on top of.

# If the limit of 4 is reached then stop the footsteps.
execute if score fearful_footsteps_temp watching.global_values matches 4.. run return run function lunareclipse.watching:fearful_footsteps/cleanup

# Add 1 to the fearful footsteps scoreboard.
scoreboard players add fearful_footsteps_temp watching.global_values 1

# Store the block value in a storage variable.
$data modify storage lunareclipse.watching:global_values temp.fearful_footsteps.block set value "$(block)"

# Store the block location if this is the first iteration.
execute if score fearful_footsteps_temp watching.global_values matches 1 summon minecraft:marker run function lunareclipse.watching:fearful_footsteps/store_marker_location

# Play the sound.
function lunareclipse.watching:fearful_footsteps/play with storage lunareclipse.watching:global_values temp.fearful_footsteps

# Loop the function.
schedule function lunareclipse.watching:fearful_footsteps/loop 0.3s