# List of variables used:
# "block_tag" - The tag of the block that is being searched for.

# Remove the advancement from the player.
advancement revoke @s from lunareclipse.watching:technical/block_detection/root

# Reset our raycast score.
$scoreboard players reset $(block_tag)_raycast watching.global_values

# Start the raycasting.
$execute anchored eyes positioned ^ ^ ^0.5 run function lunareclipse.watching:block_events/detection/raycasting/increment {"block_tag": "$(block_tag)"}