# List of variables used:
# "mechanic" - The ID of the mechanic, this will be used to determine what scoreboard and option is being checked.

# Store the correct chance in scoreboard.
$execute if data storage lunareclipse.watching:config_options {options:{$(mechanic)_chance:"insane"}} run scoreboard players set $(mechanic)_roll watching.global_values 5
$execute if data storage lunareclipse.watching:config_options {options:{$(mechanic)_chance:"common"}} run scoreboard players set $(mechanic)_roll watching.global_values 25
$execute if data storage lunareclipse.watching:config_options {options:{$(mechanic)_chance:"default"}} run scoreboard players set $(mechanic)_roll watching.global_values 100
$execute if data storage lunareclipse.watching:config_options {options:{$(mechanic)_chance:"rare"}} run scoreboard players set $(mechanic)_roll watching.global_values 200
$execute if data storage lunareclipse.watching:config_options {options:{$(mechanic)_chance:"scarce"}} run scoreboard players set $(mechanic)_roll watching.global_values 500
# Store the frequency multiplier inside of a scoreboard so it can have math applied using it.
execute store result score activity_multiplier watching.global_values run data get storage lunareclipse.watching:config_options options.activity_multiplier
# Divide the rolled number by our frequency multiplier.
$scoreboard players operation $(mechanic)_roll watching.global_values /= activity_multiplier watching.global_values
# If the number is lower than 1, set it to 1.
$execute if score $(mechanic)_roll watching.global_values matches ..1 run scoreboard players set $(mechanic)_roll watching.global_values 1
# Store the value in a storage variable so we can execute a roll with it.
$execute store result storage lunareclipse.watching:global_values temp.determine_chance.max_chance int 1 run scoreboard players get $(mechanic)_roll watching.global_values
# Also store the mechanic ID so we can work with it.
$data modify storage lunareclipse.watching:global_values temp.determine_chance.mechanic set value "$(mechanic)"
# Roll the number.
function lunareclipse.watching:utils/determine_chance/roll with storage lunareclipse.watching:global_values temp.determine_chance

# Clear the temp storage.
data remove storage lunareclipse.watching:global_values temp.determine_chance
# Clear the variables.
scoreboard players reset activity_multiplier watching.global_values