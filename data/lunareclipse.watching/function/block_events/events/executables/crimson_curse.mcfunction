# Force the chunk to check the block.
forceload add ~ ~
# Check if the block that is trying to be pivoted on is a torch or a lantern.
execute unless block ~ ~ ~ #lunareclipse.watching:torches unless block ~ ~ ~ minecraft:lantern run return run forceload remove ~ ~
# Check if there are any non-spectator players within a distance of 50.
execute if entity @a[distance=..50,gamemode=!spectator] run return run forceload remove ~ ~

# Decide whether or not the torches in a 50 block radius will be removed.
function lunareclipse.watching:utils/determine_chance/default {mechanic:"crimson_curse"}

# If the randomizer's value is 1 then change the blocks.
execute unless score crimson_curse_roll watching.global_values matches 1 run return fail

# Forceload the chunks.
forceload add ~25 ~25 ~-25 ~-25

# Change the blocks.
fill ~25 ~25 ~25 ~-25 ~-25 ~-25 minecraft:redstone_torch replace minecraft:torch
fill ~25 ~25 ~25 ~-25 ~-25 ~-25 minecraft:redstone_wall_torch[facing=north] replace minecraft:wall_torch[facing=north]
fill ~25 ~25 ~25 ~-25 ~-25 ~-25 minecraft:redstone_wall_torch[facing=south] replace minecraft:wall_torch[facing=south]
fill ~25 ~25 ~25 ~-25 ~-25 ~-25 minecraft:redstone_wall_torch[facing=east] replace minecraft:wall_torch[facing=east]
fill ~25 ~25 ~25 ~-25 ~-25 ~-25 minecraft:redstone_wall_torch[facing=west] replace minecraft:wall_torch[facing=west]
# Replace lanterns if the soul shift value is true.
execute if data storage lunareclipse.watching:config_options {options:{soul_shift:"true"}} run fill ~25 ~25 ~25 ~-25 ~-25 ~-25 minecraft:soul_lantern[hanging=true] replace minecraft:lantern[hanging=true]
execute if data storage lunareclipse.watching:config_options {options:{soul_shift:"true"}} run fill ~25 ~25 ~25 ~-25 ~-25 ~-25 minecraft:soul_lantern[hanging=false] replace minecraft:lantern[hanging=false]

# Remove any non-existing blocks from our data.
function lunareclipse.watching:block_events/detection/remove/start {block_tag:"#lunareclipse.watching:torches"}
function lunareclipse.watching:block_events/detection/remove/start {block_tag:"minecraft:lantern"}

# Remove the forceloaded chunks.
forceload remove ~25 ~25 ~-25 ~-25