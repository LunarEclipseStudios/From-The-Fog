# List of variables used:
# "structure" - The structure we're trying to place.

# Decide whether or not the structure will be placed.
$execute if data storage lunareclipse.watching:config_options {options:{structure_chance:"common"}} store result score $(structure)_roll watching.global_values run random value 1..25
$execute if data storage lunareclipse.watching:config_options {options:{structure_chance:"default"}} store result score $(structure)_roll watching.global_values run random value 1..100
$execute if data storage lunareclipse.watching:config_options {options:{structure_chance:"rare"}} store result score $(structure)_roll watching.global_values run random value 1..200

# If the randomizer's value is 1 then place the structure.
$execute if loaded ~ ~ ~ if score $(structure)_roll watching.global_values matches 1 run function lunareclipse.watching:structures/place/init {structure:"$(structure)"}

# Clear the $(structure)_roll scoreboard.
$scoreboard players reset $(structure)_roll watching.global_values