# Check if the block is surrounded by blocks on the left and right, this will allow us to detect strip mines.
execute rotated ~ 0 anchored eyes unless block ^1 ^ ^ #lunareclipse.watching:ghost_miner/surroundings run return fail
execute rotated ~ 0 anchored eyes unless block ^-1 ^ ^ #lunareclipse.watching:ghost_miner/surroundings run return fail
execute rotated ~ 0 anchored eyes unless block ^1 ^-1 ^ #lunareclipse.watching:ghost_miner/surroundings run return fail
execute rotated ~ 0 anchored eyes unless block ^-1 ^-1 ^ #lunareclipse.watching:ghost_miner/surroundings run return fail

# If it makes it here, the check succeeded.
return 1