# Decide whether or not the candles will be extinguished.
function lunareclipse.watching:utils/determine_chance/common {mechanic:"fearful_footsteps"}
# scoreboard players set fearful_footsteps_roll watching.global_values 1

# If the fearful_footsteps_roll value is 1 then spawn in the footsteps
execute if loaded ~ ~ ~ if score fearful_footsteps_roll watching.global_values matches 1 run function lunareclipse.watching:fearful_footsteps/presets/attempt

# Send a message.
execute if loaded ~ ~ ~ if score fearful_footsteps_roll watching.global_values matches 1 run function lunareclipse.watching:debug/message {message: "Fearful Footsteps Attempt", status: "1", info: {"Status": "Executed"}, info_list: ["Status"]}
execute unless score fearful_footsteps_roll watching.global_values matches 1 run function lunareclipse.watching:debug/message {message: "Fearful Footsteps Attempt", status: "0", info: {"Status": "Failed"}, info_list: ["Status"]}

# Reset the scoreboard variable.
scoreboard players reset fearful_footsteps_roll watching.global_values