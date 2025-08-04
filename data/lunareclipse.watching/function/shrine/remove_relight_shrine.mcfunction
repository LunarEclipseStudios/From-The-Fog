# List of variables used:
# "block_tag" - The tag of the block that is being searched for.
# "index" - The position in the array we are in.
# "x"
# "y"
# "z"

# Forceload the block position.
$forceload add $(x) $(z)

# Relight the shrine if it exists.
$execute positioned $(x) $(y) $(z) if function lunareclipse.watching:shrine/check unless entity @a[distance=..80] run fill ~ ~ ~ ~ ~ ~ fire replace air

# Check if the shrine exists and if it doesn't remove it.
$execute positioned $(x) $(y) $(z) unless function lunareclipse.watching:shrine/check run data remove storage lunareclipse.watching:global_values block_positions.$(block_tag).positions[$(index)]

# Remove 1 from the forloop score to allow it to catch-up.
$execute positioned $(x) $(y) $(z) unless function lunareclipse.watching:shrine/check run scoreboard players remove block_positions.$(block_tag).positions lunareclipse_utils.global_values 1

# Remove the forceload on the block position.
$forceload remove $(x) $(z)

# Send a message.
$function lunareclipse.watching:debug/message {message: "Random Block Event", status: "1", info: {"Event ID": "Rekindling Shrine", "Block Tag": "$(block_tag)", "Block Position": "$(x) $(y) $(z)", "Status": "Executed"}, info_list: ["Event ID", "Block Tag", "Block Position", "Status"]}