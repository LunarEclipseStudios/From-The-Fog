# List of variables used:
# "block_tag" - The tag of the block that is being searched for.

# Add one to our increment score.
$scoreboard players add $(block_tag)_raycast watching.global_values 1

# Check for the block. - If it's fire run a seperate function.
$execute if block ~ ~ ~ $(block_tag) if block ~ ~ ~ fire if function lunareclipse.watching:shrine/check run function lunareclipse.watching:shrine/found_shrine {"block_tag": "$(block_tag)"}

$execute if block ~ ~ ~ $(block_tag) unless block ~ ~ ~ fire run function lunareclipse.watching:block_events/detection/raycasting/found_block {"block_tag": "$(block_tag)"}
$execute if block ~ ~ ~ $(block_tag) run return 1

# Check if we've reached our limit.
$execute if score $(block_tag)_raycast watching.global_values matches 10.. run return run scoreboard players reset $(block_tag)_raycast watching.global_values

# Move forward.
$execute positioned ^ ^ ^0.5 run function lunareclipse.watching:block_events/detection/raycasting/increment {"block_tag": "$(block_tag)"}