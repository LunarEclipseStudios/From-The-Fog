# List of variables used:
# "structure" - The structure being placed.
# "x"
# "y"
# "z"
# "x_center"
# "y_center"
# "z_center"

# Forceload the block.
$execute positioned $(x_center) $(y_center) $(z_center) run forceload add ~-24 ~-24 ~24 ~24

# Send a message.
$execute positioned $(x_center) $(y_center) $(z_center) if function lunareclipse.watching:structures/check_collision/$(structure) run function lunareclipse.watching:debug/message {message: "Placing Structure", status: "1", info: {"Structure": "$(structure)", "Position": "$(x) $(y) $(z)"}, info_list: ["Structure", "Position"]}
$execute positioned $(x_center) $(y_center) $(z_center) unless function lunareclipse.watching:structures/check_collision/$(structure) run function lunareclipse.watching:debug/message {message: "Placing Structure", status: "0", info: {"Structure": "$(structure)", "Position": "$(x) $(y) $(z)"}, info_list: ["Structure", "Position"]}

# Execute at the position and check if anything has been placed in the way of the structure.
$execute positioned $(x_center) $(y_center) $(z_center) if function lunareclipse.watching:structures/check_collision/$(structure) positioned $(x) $(y) $(z) run function lunareclipse.watching:structures/place/place {structure:"$(structure)"}

# Remove the forceload.
$execute positioned $(x_center) $(y_center) $(z_center) run forceload remove ~-24 ~-24 ~24 ~24