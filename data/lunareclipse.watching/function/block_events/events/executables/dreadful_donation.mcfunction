# Check if the block that is trying to donated to is a chest.
execute unless block ~ ~ ~ minecraft:chest run return fail
# Check if there are any non-spectator players within a distance of 50.
execute if entity @a[distance=..25,gamemode=!spectator] run return fail

# Decide whether or not the chest will get an item.
function lunareclipse.watching:utils/determine_chance/default {mechanic:"dreadful_donation"}

# If the dreadful donation randomizer's value is 1 then donate an item.
execute if loaded ~ ~ ~ if score dreadful_donation_roll watching.global_values matches 1 run function lunareclipse.watching:block_events/events/executables/dreadful_donation/donate with storage lunareclipse.watching:config_options options