# List of variables used:
# "tunnel_width" - The width of the tunnels.
# "tunnel_height" - The height of the tunnels.
# "max_increments" - The amount of increments Herobrine can break tunnels in.

# Clear the digging increment.
scoreboard players reset ghost_miner_length watching.global_values

# Start digging.
$execute align zx positioned ~0.5 ~ ~0.5 rotated ~ 0 run function lunareclipse.watching:ghost_miner/dig_tunnel/dig {tunnel_width:$(tunnel_width),tunnel_height:$(tunnel_height),max_increments:$(max_increments)}