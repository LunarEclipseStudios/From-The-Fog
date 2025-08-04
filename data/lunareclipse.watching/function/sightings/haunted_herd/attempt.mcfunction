# Decide whether or not the mob will appear.
function lunareclipse.watching:utils/determine_chance/default {mechanic:"haunted_herd"}

# If the check passed then summon the mob on a random player.
execute if score haunted_herd_roll watching.global_values matches 1 as @r at @s run function lunareclipse.watching:sightings/presets/haunted_herd

# Clear the scoreboard.
scoreboard players reset haunted_herd_roll watching.global_values