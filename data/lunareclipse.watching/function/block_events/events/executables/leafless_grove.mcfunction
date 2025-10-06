# List of variables used:
# "index" - The position of the entry in the array.

# Check if there are any non-spectator players within a distance of 78.
execute if entity @a[distance=..78,gamemode=!spectator] run return run scoreboard players reset leafless_grove_link watching.global_values

# Decide whether or not the leaves will be removed from the nearby trees.
execute unless score leafless_grove_link watching.global_values matches 0.. run function lunareclipse.watching:utils/determine_chance/default {mechanic:"leafless_grove"}
# scoreboard players set leafless_grove_roll watching.global_values 1

# Remove the entry. - This is done regardless of whether or not the check succeeds because there can be more than one position log for one biome and I don't want it to get too cluttered.
$data remove storage lunareclipse.watching:global_values block_positions."#minecraft:is_forest".positions[$(index)]

# If the randomizer's value is 1 then remove the leaves. - Resets the roll if it fails.
execute unless score leafless_grove_roll watching.global_values matches 1 run return run scoreboard players reset leafless_grove_roll watching.global_values

# Increment the score.
scoreboard players add leafless_grove_link watching.global_values 1

# Clear the leaves.
fill ~25 ~50 ~25 ~-25 ~-50 ~-25 air replace #leaves[persistent=false]
# fill ~25 ~50 ~25 ~-25 ~-50 ~-25 air replace bee_nest

# Remove side facing logs.
# fill ~25 ~50 ~25 ~-25 ~-50 ~-25 air replace #logs[axis=x]
# fill ~25 ~50 ~25 ~-25 ~-50 ~-25 air replace #logs[axis=z]

# Remove any border trees.
fill ~-26 ~50 ~26 ~-27 ~-50 ~-26 minecraft:air replace #logs
fill ~-26 ~50 ~-26 ~26 ~-50 ~-27 minecraft:air replace #logs
fill ~-26 ~50 ~26 ~26 ~-50 ~27 minecraft:air replace #logs
fill ~26 ~50 ~-26 ~27 ~-50 ~26 minecraft:air replace #logs

# Remove connecting leaves.
fill ~-26 ~50 ~26 ~-26 ~-50 ~-26 minecraft:air replace #leaves[persistent=false]
fill ~-26 ~50 ~-26 ~26 ~-50 ~-26 minecraft:air replace #leaves[persistent=false]
fill ~-26 ~50 ~26 ~26 ~-50 ~26 minecraft:air replace #leaves[persistent=false]
fill ~26 ~50 ~-26 ~26 ~-50 ~26 minecraft:air replace #leaves[persistent=false]

# Forceload this forest so the leaves can be removed. - We do this so when it strings through multiple sets of trees they are all loaded.
execute unless score leafless_grove_link watching.global_values matches 3.. positioned ^ ^ ^50 run forceload add ~30 ~30 ~30 ~30

# Remove the forceload for this set of trees.
forceload remove ~30 ~30 ~30 ~30

# Linking test.
execute unless score leafless_grove_link watching.global_values matches 3.. positioned ^ ^ ^50 run return run function lunareclipse.watching:block_events/events/executables/leafless_grove with storage lunareclipse.watching:global_values block_positions."#minecraft:is_forest".selected

# If the code makes it to this point it's done linking, so reset the scoreboard.
scoreboard players reset leafless_grove_link watching.global_values