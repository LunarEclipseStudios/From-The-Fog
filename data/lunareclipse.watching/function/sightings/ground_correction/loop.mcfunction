# If the scoreboard exceeds the limit then stop the loop.
execute if score ground_correction watching.global_values matches 320.. run return 0

# Increment the raycast scoreboard.
scoreboard players add ground_correction watching.global_values 1

# Teleport all the herobrineEntities to the current positioned location.
execute align y run tp @s ~ ~ ~

# Check if the current block is water.
execute if block ~ ~ ~ #lunareclipse.watching:liquid run function lunareclipse.watching:sightings/models/remove

# If the block below the base entity is a block without collision and it isn't a block from pause raycast then run the ground correction function again just 0.1 blocks lower.
execute if block ~ ~-0.1 ~ #lunareclipse.watching:ground_correction/no_col_blocks unless block ~ ~-0.1 ~ #lunareclipse.watching:ground_correction/pause_raycast positioned ~ ~-0.1 ~ run function lunareclipse.watching:sightings/ground_correction/loop
# If the current block the base entity is standing in is a solid block not located in "no_col_blocks" then run the ground correction function again just 0.1 blocks lower. This is done to ensure Herobrine can spawn in two block tall spaces when creeping. (Ie: strip mines.)
execute unless block ~ ~ ~ #lunareclipse.watching:ground_correction/no_col_blocks unless block ~ ~-0.1 ~ #lunareclipse.watching:ground_correction/pause_raycast positioned ~ ~-0.1 ~ run function lunareclipse.watching:sightings/ground_correction/loop