# Check if the block that is trying to be extinguished is a candle.
execute unless block ~ ~ ~ #minecraft:candles run return fail
# Check if the block that is trying to be extinguished is a candle that is lit, if not then retry. (Max 3 retries.)
execute unless score chilled_candles_retry watching.global_values matches 4.. if block ~ ~ ~ #minecraft:candles[lit=false] run scoreboard players add chilled_candles_retry watching.global_values 1
execute unless score chilled_candles_retry watching.global_values matches 4.. if block ~ ~ ~ #minecraft:candles[lit=false] run return run function lunareclipse.watching:block_events/presets/chilled_candles
execute if score chilled_candles_retry watching.global_values matches 4.. run return run scoreboard players reset chilled_candles_retry watching.global_values
# Check if there are any non-spectator players within a distance of 50.
execute if entity @a[distance=..50,gamemode=!spectator] run return fail

# Forceload the chunks.
forceload add ~25 ~25 ~-25 ~-25

# Decide whether or not the candles will be extinguished.
function lunareclipse.watching:utils/determine_chance/default {mechanic:"chilled_candles"}

# Store a list of every candle type.
data modify storage lunareclipse.watching:global_values block_positions.#minecraft:candles.temp.list set value [\
"minecraft:candle",\
"minecraft:white_candle",\
"minecraft:orange_candle",\
"minecraft:magenta_candle",\
"minecraft:light_blue_candle",\
"minecraft:yellow_candle",\
"minecraft:lime_candle",\
"minecraft:pink_candle",\
"minecraft:gray_candle",\
"minecraft:light_gray_candle",\
"minecraft:cyan_candle",\
"minecraft:purple_candle",\
"minecraft:blue_candle",\
"minecraft:brown_candle",\
"minecraft:green_candle",\
"minecraft:red_candle",\
"minecraft:black_candle"\
]

# If the chilled_candles_roll value is 1 then put out the candles.
execute if loaded ~ ~ ~ if score chilled_candles_roll watching.global_values matches 1 run function lunareclipse.utils:forloop/start {target:"lunareclipse.watching:global_values",path:"block_positions.#minecraft:candles.temp.list",command:"lunareclipse.watching:block_events/events/executables/chilled_candles/extinguish"}

# Remove the list of candle types.
data remove storage lunareclipse.watching:global_values block_positions.#minecraft:candles.temp.list

# Remove the forceloaded chunks.
forceload remove ~25 ~25 ~-25 ~-25