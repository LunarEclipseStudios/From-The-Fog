# Check if the composition of the shrine is correct and if it is then return 1.
execute unless block ~ ~-1 ~ minecraft:netherrack run return fail
execute unless block ~1 ~-2 ~ minecraft:gold_block run return fail
execute unless block ~-1 ~-2 ~ minecraft:gold_block run return fail
execute unless block ~ ~-2 ~1 minecraft:gold_block run return fail
execute unless block ~ ~-2 ~-1 minecraft:gold_block run return fail
execute unless block ~1 ~-2 ~1 minecraft:gold_block run return fail
execute unless block ~-1 ~-2 ~1 minecraft:gold_block run return fail
execute unless block ~-1 ~-2 ~-1 minecraft:gold_block run return fail
execute unless block ~1 ~-2 ~-1 minecraft:gold_block run return fail

# Don't check for the torches as some people don't place them the same.
# execute unless block ~1 ~-1 ~ minecraft:redstone_torch run return fail
# execute unless block ~ ~-1 ~1 minecraft:redstone_torch run return fail
# execute unless block ~-1 ~-1 ~ minecraft:redstone_torch run return fail
# execute unless block ~ ~-1 ~-1 minecraft:redstone_torch run return fail

# Return 1 to show that the composition of the shrine is correct.
return 1