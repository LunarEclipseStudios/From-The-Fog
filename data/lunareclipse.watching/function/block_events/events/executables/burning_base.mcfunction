# Check if the block that is trying to be burnt is a bed.
execute unless block ~ ~ ~ #minecraft:beds run return fail
# Check if the blocks below the bed are flamable.
execute unless block ~ ~-1 ~ #lunareclipse.watching:flammable run return fail
# Check if there are any non-spectator players within a distance of 50.
execute if entity @a[distance=..50,gamemode=!spectator] run return fail

# Decide whether or not the bed will start a fire.
function lunareclipse.watching:utils/determine_chance/default {mechanic:"burning_base"}

# If the burning base randomizer's value is 1 then burn the base.
execute if loaded ~ ~ ~ if score burning_base_roll watching.global_values matches 1 run fill ~1 ~ ~1 ~-1 ~1 ~-1 fire replace air