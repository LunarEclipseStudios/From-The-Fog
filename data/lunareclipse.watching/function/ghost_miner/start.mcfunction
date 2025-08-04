# Check if the player is underground.
execute unless predicate lunareclipse.watching:checks/is_underground run return run function lunareclipse.watching:debug/message {message: "Ghost Miner Failed", status: "0", info: {Reason: "Not in a cave."}, info_list: ["Reason"]}
# Check if the block is surrounded by blocks on the left and right, this will allow us to detect strip mines.
execute unless function lunareclipse.watching:ghost_miner/check_strip_mine run return run function lunareclipse.watching:debug/message {message: "Ghost Miner Failed", status: "0", info: {Reason: "Not in a strip mine."}, info_list: ["Reason"]}

# Check whether or not the event is even going to occur.
function lunareclipse.watching:utils/determine_chance/default {mechanic:"ghost_miner"}
# scoreboard players set ghost_miner_roll watching.global_values 1
# If the event roll doesn't equal 1 then the event is not going to happen.
execute unless score ghost_miner_roll watching.global_values matches 1 run function lunareclipse.watching:debug/message {message: "Ghost Miner Failed", status: "0", info: {Reason: "Did not pass random check."}, info_list: ["Reason"]}
execute unless score ghost_miner_roll watching.global_values matches 1 run return run scoreboard players reset ghost_miner_roll watching.global_values

# Give the player the advancement if advancements are enabled.
execute if entity @s[advancements={from_the_fog:root=true}] run advancement grant @a[distance=..10] only from_the_fog:haunting/encounter_ghost_miner

# Decide which side the event will happen on.
execute store result score ghost_miner_angle watching.global_values run random value 1..2

# Start the event.
execute if score ghost_miner_angle watching.global_values matches 1 rotated ~ 0 positioned ^-5 ^ ^ facing entity @s eyes run function lunareclipse.watching:ghost_miner/dig_tunnel/init
execute if score ghost_miner_angle watching.global_values matches 2 rotated ~ 0 positioned ^5 ^ ^ facing entity @s eyes run function lunareclipse.watching:ghost_miner/dig_tunnel/init

# Clear the angle scoreboard.
scoreboard players reset ghost_miner_angle watching.global_values

# Send a message.
function lunareclipse.watching:debug/message {message: "Ghost Miner Spawned", status: "1", info: {}, info_list: []}

# Reset the roll scoreboard.
scoreboard players reset ghost_miner_roll watching.global_values