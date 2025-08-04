# List of variables used:
# "tunnel_width" - The width of the tunnels.
# "tunnel_height" - The height of the tunnels.
# "max_increments" - The amount of increments Herobrine can break tunnels in.

# Stop the function if the limit is hit.
$execute if score ghost_miner_length watching.global_values matches $(max_increments).. run return 1

# Fill the initial 5 blocks with air and place a redstone torch.
$fill ^$(tunnel_width) ^ ^ ^ ^$(tunnel_height) ^5 air replace #lunareclipse.watching:ghost_miner/mineable

# Place the redstone torch.
execute unless block ~1 ~1 ~ #lunareclipse.watching:ground_correction/no_col_blocks positioned ~ ~1 ~ run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wall_torch[facing=west] replace #minecraft:air
execute unless block ~-1 ~1 ~ #lunareclipse.watching:ground_correction/no_col_blocks positioned ~ ~1 ~ run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wall_torch[facing=east] replace #minecraft:air
execute unless block ~ ~1 ~1 #lunareclipse.watching:ground_correction/no_col_blocks positioned ~ ~1 ~ run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wall_torch[facing=north] replace #minecraft:air
execute unless block ~ ~1 ~-1 #lunareclipse.watching:ground_correction/no_col_blocks positioned ~ ~1 ~ run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wall_torch[facing=south] replace #minecraft:air

# Increment the length by 1.
scoreboard players add ghost_miner_length watching.global_values 1

# Loop the function.
$execute positioned ^ ^ ^5 run function lunareclipse.watching:ghost_miner/dig_tunnel/dig {tunnel_width:$(tunnel_width),tunnel_height:$(tunnel_height),max_increments:$(max_increments)}

# If the ghost miner is low enough then allow bridging and liquid blocking.
execute unless predicate lunareclipse.watching:checks/is_underground run return 1

# If he runs into water, he will block it off.
fill ^ ^-1 ^ ^ ^2 ^5 cobblestone replace #lunareclipse.watching:liquid
fill ^1 ^ ^ ^-1 ^ ^5 cobblestone replace #lunareclipse.watching:liquid
fill ^1 ^1 ^ ^-1 ^1 ^5 cobblestone replace #lunareclipse.watching:liquid

# If there are holes in the floor fill them with cobblestone.
execute positioned ~ ~-1 ~ if block ^ ^ ^1 #lunareclipse.watching:ghost_miner/coverable run setblock ^ ^ ^1 cobblestone
execute positioned ~ ~-1 ~ if block ^ ^ ^2 #lunareclipse.watching:ghost_miner/coverable run setblock ^ ^ ^2 cobblestone
execute positioned ~ ~-1 ~ if block ^ ^ ^3 #lunareclipse.watching:ghost_miner/coverable run setblock ^ ^ ^3 cobblestone
execute positioned ~ ~-1 ~ if block ^ ^ ^4 #lunareclipse.watching:ghost_miner/coverable run setblock ^ ^ ^4 cobblestone
execute positioned ~ ~-1 ~ if block ^ ^ ^5 #lunareclipse.watching:ghost_miner/coverable run setblock ^ ^ ^5 cobblestone
execute positioned ~ ~-1 ~ if block ^ ^ ^6 #lunareclipse.watching:ghost_miner/coverable run setblock ^ ^ ^6 cobblestone