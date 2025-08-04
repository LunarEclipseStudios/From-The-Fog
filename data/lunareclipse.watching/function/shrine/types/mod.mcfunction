# Check if the composition of the shrine is correct and if it is then return 1.
execute unless block ~ ~-1 ~ minecraft:netherrack run return fail
execute unless block ~ ~-2 ~ minecraft:netherrack run return fail
execute unless block ~ ~-3 ~ minecraft:gold_block run return fail
execute unless block ~ ~-4 ~ minecraft:gold_block run return fail

# Return 1 to show that the composition of the shrine is correct.
return 1