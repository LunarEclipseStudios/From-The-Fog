# List of variables used:
# "block" - The type of block the footsteps are happening on top of.
# "x"
# "y"
# "z"
# "yaw"

# Store the location that these footsteps will happen at.
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 positioned ^ ^ ^1 summon minecraft:marker run function lunareclipse.watching:fearful_footsteps/store_marker_location

# Play the sound.
$execute positioned $(x) $(y) $(z) run playsound minecraft:block.$(block).step player @a ~ ~ ~ 0.2

# $execute positioned $(x) $(y) $(z) run particle minecraft:campfire_signal_smoke ~ ~ ~ 0 0 0 0.01 10