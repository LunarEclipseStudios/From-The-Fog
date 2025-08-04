# Decide whether or not to hit the player.
function lunareclipse.watching:utils/determine_chance/default {mechanic:"sneaky_strike"}
# scoreboard players set sneaky_strike_roll watching.global_values 1
# If the randomizer's value is 1 then hit the player.
execute if score sneaky_strike_roll watching.global_values matches 1 run function lunareclipse.watching:sightings/punch

# Reset the randomization scoreboard.
scoreboard players reset sneaky_strike_roll watching.global_values