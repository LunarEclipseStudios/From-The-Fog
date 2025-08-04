# Check which block that the player is standing on and run the function accordingly.
execute if block ~ ~-1 ~ minecraft:grass_block run return run function lunareclipse.watching:fearful_footsteps/start {block:"grass"}
execute if block ~ ~-1 ~ minecraft:deepslate run return run function lunareclipse.watching:fearful_footsteps/start {block:"deepslate"}
execute if block ~ ~-1 ~ #minecraft:base_stone_overworld run return run function lunareclipse.watching:fearful_footsteps/start {block:"stone"}
execute if block ~ ~-1 ~ minecraft:sand run return run function lunareclipse.watching:fearful_footsteps/start {block:"sand"}
execute if block ~ ~-1 ~ #minecraft:planks run return run function lunareclipse.watching:fearful_footsteps/start {block:"wood"}