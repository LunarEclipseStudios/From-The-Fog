# Remove the advancement from the player. - Check 5 minute tick.
# advancement revoke @s from lunareclipse.watching:technical/block_detection/root

# Save the forest location under a fake tag.
function lunareclipse.watching:block_events/detection/raycasting/found_block {"block_tag": "#minecraft:is_forest"}