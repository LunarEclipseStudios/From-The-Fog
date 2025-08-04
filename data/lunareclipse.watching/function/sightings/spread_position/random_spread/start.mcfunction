# List of variables used:
# "distance_min" - The closest distance that Herobrine can behind the player.
# "distance_max" - The farthest distance that Herobrine can behind the player.
# "spacing_min" - The closest Herobrine can be to the left or the right of the player.
# "spacing_max" - The farthest Herobrine can be to the left or the right of the player.
# "front_spawning" - Defines whethere or not Herobrine can spawn in front of the player during this roll.

# Determine whether or not the distance will be negative.
$execute store result score spread_pos_distance watching.global_values run random value 0..$(front_spawning)
# Determine whether or not the spacing will be negative.
execute store result score spread_pos_spacing watching.global_values run random value 0..1

# Roll the distance and save it to a scoreboard.
$execute if score spread_pos_distance watching.global_values matches 0 store result storage lunareclipse.watching:global_values sightings.temp.spread.distance int -1 run random value $(distance_min)..$(distance_max)
$execute if score spread_pos_distance watching.global_values matches 1 store result storage lunareclipse.watching:global_values sightings.temp.spread.distance int 1 run random value $(distance_min)..$(distance_max)
# Roll the spacing and save it to a scoreboard.
$execute if score spread_pos_spacing watching.global_values matches 0 store result storage lunareclipse.watching:global_values sightings.temp.spread.spacing int -1 run random value $(spacing_min)..$(spacing_max)
$execute if score spread_pos_spacing watching.global_values matches 1 store result storage lunareclipse.watching:global_values sightings.temp.spread.spacing int 1 run random value $(spacing_min)..$(spacing_max)

# Run the spread function.
execute positioned ~ ~ ~ run function lunareclipse.watching:sightings/spread_position/random_spread/spread with storage lunareclipse.watching:global_values sightings.temp.spread

# Remove the info from the storage variables.
data remove storage lunareclipse.watching:global_values sightings.temp.spread
# Reset the scoreboards.
scoreboard players reset spread_pos_distance watching.global_values
scoreboard players reset spread_pos_spacing watching.global_values