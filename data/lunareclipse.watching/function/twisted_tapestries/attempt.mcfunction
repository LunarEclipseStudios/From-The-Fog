# Decide whether or not the painting will be changed.
function lunareclipse.watching:utils/determine_chance/common {mechanic:"twisted_tapestries"}
# scoreboard players set twisted_tapestries_roll watching.global_values 1

# If the roll matches 1 then execute the function.
execute if score twisted_tapestries_roll watching.global_values matches 1 as @e[type=minecraft:painting,sort=nearest,limit=1,distance=..30] run function lunareclipse.watching:twisted_tapestries/change_painting/add

# Send a message.
execute if loaded ~ ~ ~ if score twisted_tapestries_roll watching.global_values matches 1 run function lunareclipse.watching:debug/message {message: "Twisted Tapestries Attempt", status: "1", info: {"Status": "Executed"}, info_list: ["Status"]}
execute unless score twisted_tapestries_roll watching.global_values matches 1 run function lunareclipse.watching:debug/message {message: "Twisted Tapestries Attempt", status: "0", info: {"Status": "Failed"}, info_list: ["Status"]}

# Reset the scoreboard variable.
scoreboard players reset twisted_tapestries_roll watching.global_values