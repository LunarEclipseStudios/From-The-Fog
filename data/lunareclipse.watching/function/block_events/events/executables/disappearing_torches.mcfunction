# Force the chunk to check the block.
forceload add ~ ~
# Check if the block that is trying to be pivoted on is a torch.
execute unless block ~ ~ ~ #lunareclipse.watching:torches run return run forceload remove ~ ~
# Check if there are any non-spectator players within a distance of 50.
execute if entity @a[distance=..50,gamemode=!spectator] run return run forceload remove ~ ~

# Forceload the chunks.
forceload add ~25 ~25 ~-25 ~-25

# Decide whether or not the torches in a 50 block radius will be removed.
function lunareclipse.watching:utils/determine_chance/default {mechanic:"disappearing_torches"}

# If the randomizer's value is 1 then remove the torches.
execute if loaded ~ ~ ~ if score disappearing_torches_roll watching.global_values matches 1 run fill ~25 ~25 ~25 ~-25 ~-25 ~-25 air replace #lunareclipse.watching:torches

# Remove any non-existing blocks from our data.
function lunareclipse.watching:block_events/detection/remove/start {block_tag:"#lunareclipse.watching:torches"}

# Remove the forceloaded chunks.
forceload remove ~25 ~25 ~-25 ~-25