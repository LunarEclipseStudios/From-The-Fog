# If the biome boards option is off set it to oak.
execute if data storage lunareclipse.watching:config_options {options:{biome_boards:"false"}} run return run data modify storage lunareclipse.watching:global_values signs.temp.type set value "oak"
# Based on the biome get the type of sign.
execute if biome ~ ~ ~ #minecraft:is_taiga run return run data modify storage lunareclipse.watching:global_values signs.temp.type set value "spruce"
execute if biome ~ ~ ~ minecraft:birch_forest run return run data modify storage lunareclipse.watching:global_values signs.temp.type set value "birch"
execute if biome ~ ~ ~ minecraft:old_growth_birch_forest run return run data modify storage lunareclipse.watching:global_values signs.temp.type set value "birch"
execute if biome ~ ~ ~ #minecraft:is_jungle run return run data modify storage lunareclipse.watching:global_values signs.temp.type set value "jungle"
execute if biome ~ ~ ~ #minecraft:is_savanna run return run data modify storage lunareclipse.watching:global_values signs.temp.type set value "acacia"
execute if biome ~ ~ ~ minecraft:dark_forest run return run data modify storage lunareclipse.watching:global_values signs.temp.type set value "dark_oak"
execute if biome ~ ~ ~ minecraft:mangrove_swamp run return run data modify storage lunareclipse.watching:global_values signs.temp.type set value "mangrove"
execute if biome ~ ~ ~ minecraft:cherry_grove run return run data modify storage lunareclipse.watching:global_values signs.temp.type set value "cherry"
execute if biome ~ ~ ~ minecraft:crimson_forest run return run data modify storage lunareclipse.watching:global_values signs.temp.type set value "crimson"
execute if biome ~ ~ ~ minecraft:warped_forest run return run data modify storage lunareclipse.watching:global_values signs.temp.type set value "warped"
# If the code makes it to here then make it a normal sign.
data modify storage lunareclipse.watching:global_values signs.temp.type set value "oak"