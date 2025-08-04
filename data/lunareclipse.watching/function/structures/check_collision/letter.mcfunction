# Check if the collision box the structure is obstructed.
execute if blocks ~2 ~ ~2 ~-2 ~2 ~-2 ~ ~ ~ masked run return 1
return fail