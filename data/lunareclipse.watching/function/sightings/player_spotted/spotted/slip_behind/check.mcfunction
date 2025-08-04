# Check which direction that Herobrine is meant to move in and react accordingly.
execute rotated ~ 0 anchored eyes \
positioned ~ ~1 ~ \
unless block ^1 ^ ^1 #lunareclipse.watching:player_spotted/sight_blocks unless block ^1 ^-1 ^1 #lunareclipse.watching:player_spotted/sight_blocks \
if block ^1 ^1 ^ #lunareclipse.watching:ground_correction/no_col_blocks if block ^1 ^ ^ #lunareclipse.watching:ground_correction/no_col_blocks \
run return run function lunareclipse.watching:sightings/player_spotted/spotted/slip_behind/left
# The second line of checks determines if he has room to move to the side.
execute rotated ~ 0 anchored eyes \
positioned ~ ~1 ~ \
unless block ^-1 ^ ^1 #lunareclipse.watching:player_spotted/sight_blocks unless block ^-1 ^-1 ^1 #lunareclipse.watching:player_spotted/sight_blocks \
if block ^-1 ^1 ^ #lunareclipse.watching:ground_correction/no_col_blocks if block ^-1 ^ ^ #lunareclipse.watching:ground_correction/no_col_blocks \
run return run function lunareclipse.watching:sightings/player_spotted/spotted/slip_behind/right