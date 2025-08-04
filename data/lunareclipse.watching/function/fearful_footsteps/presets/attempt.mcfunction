# Make sure to remove Herobrine before the event happens.
function lunareclipse.watching:sightings/models/remove

# Get the random direction that the footsteps will happen in.
function lunareclipse.watching:utils/determine_chance/roll {mechanic: "fearful_footsteps_position", max_chance: 5}

# This command is meant to be execute on a player.
execute rotated ~ 0 if score fearful_footsteps_position_roll watching.global_values matches 1 positioned ^4 ^ ^ run function lunareclipse.watching:fearful_footsteps/init
execute rotated ~ 0 if score fearful_footsteps_position_roll watching.global_values matches 2 positioned ^-4 ^ ^ run function lunareclipse.watching:fearful_footsteps/init
execute rotated ~ 0 if score fearful_footsteps_position_roll watching.global_values matches 3 positioned ^6 ^ ^ run function lunareclipse.watching:fearful_footsteps/init
execute rotated ~ 0 if score fearful_footsteps_position_roll watching.global_values matches 4 positioned ^-6 ^ ^ run function lunareclipse.watching:fearful_footsteps/init
# Runs up behind the player.
execute rotated ~ 0 if score fearful_footsteps_position_roll watching.global_values matches 5 positioned ^ ^ ^-4 run function lunareclipse.watching:fearful_footsteps/init

# Reset the scoreboard variable.
scoreboard players reset fearful_footsteps_position_roll watching.global_values