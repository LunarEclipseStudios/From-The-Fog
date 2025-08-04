# Initialize the digging.
execute rotated ~180 0 run function lunareclipse.watching:ghost_miner/dig_tunnel/start_digging {tunnel_width:0,tunnel_height:1,max_increments:20}

# Create Herobrine.
execute align zx positioned ~0.5 ~ ~0.5 rotated ~ 0 positioned ^ ^ ^-1 run function lunareclipse.watching:sightings/presets/ghost_miner

# Play the mining sounds.
schedule function lunareclipse.watching:sounds/ghost_miner/mining_stone 12t append
schedule function lunareclipse.watching:sounds/ghost_miner/mining_stone 16t append
schedule function lunareclipse.watching:sounds/ghost_miner/mining_stone 20t append
schedule function lunareclipse.watching:sounds/ghost_miner/mining_stone 24t append
schedule function lunareclipse.watching:sounds/ghost_miner/break_stone 28t append
schedule function lunareclipse.watching:sounds/ghost_miner/mining_stone 34t append
schedule function lunareclipse.watching:sounds/ghost_miner/mining_stone 38t append
schedule function lunareclipse.watching:sounds/ghost_miner/mining_stone 42t append
schedule function lunareclipse.watching:sounds/ghost_miner/mining_stone 46t append
schedule function lunareclipse.watching:sounds/ghost_miner/break_stone 50t append

# Clear the length scoreboard.
scoreboard players reset ghost_miner_length watching.global_values