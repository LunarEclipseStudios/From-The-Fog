# List of variables used:
# "type" - The type of sighting being summoned.
# "position" - The system that will be used to spread Herobrine.
# "max_distance" - The max distance that Herobrine can spawn without being removed.
# "spot_fov" - The fov that the player can spot Herobrine from.
# "jumpscare" - Defines whether or not Herobrine can jumpscare the player if they get too close.
# "light_reactant" - Defines whether or not Herobrine is reactant to light levels.
# "despawn_timer" - Defines the amount of time until Herobrine despawns after the sighting.
# "sneaky_strike" - Defines whether or not Herobrine can punch the player if he stays behind them for a while without them noticing.
# "custom" - Defines whether or not the sighting is custom. (Strictly for debug purposes.)

# Before spawning a new Herobrine entity remove all other existing Herobrines.
function lunareclipse.watching:sightings/models/remove

# If the retry limit has been reached then stop the code execution.
execute if score sighting_retry_limit watching.global_values matches 5.. run return run scoreboard players reset sighting_retry_limit watching.global_values

# Define the information about the sighting.
$data modify storage lunareclipse.watching:global_values sightings.type set value "$(type)"
$data modify storage lunareclipse.watching:global_values sightings.previous_sighting set value "$(type)"
$data modify storage lunareclipse.watching:global_values sightings.custom set value "$(custom)"
$data modify storage lunareclipse.watching:global_values sightings.spot_fov set value "$(spot_fov)"
$data modify storage lunareclipse.watching:global_values sightings.jumpscare set value "$(jumpscare)"
$data modify storage lunareclipse.watching:global_values sightings.light_reactant set value "$(light_reactant)"
$data modify storage lunareclipse.watching:global_values sightings.sneaky_strike set value "$(sneaky_strike)"

# Summon the base entity that Herobrine with use to maintain a static location.
summon interaction ~ 0 ~ {Tags:["watching.spread_entity", "watching.herobrine"],width:1f,height:2f}

# This function determines where Herobrine will be positioned around the player.
$function lunareclipse.watching:sightings/spread_position/$(position)/init

# If the block below the base entity is a block without collision and it isn't a block from pause raycast then run the ground correction function.
execute as @e[type=interaction,tag=watching.spread_entity] at @s if block ~ ~-0.1 ~ #lunareclipse.watching:ground_correction/no_col_blocks run function lunareclipse.watching:sightings/ground_correction/init
# If the current block the base entity is standing in is a solid block not located in "no_col_blocks" then run the ground correction function. This is done to ensure Herobrine can spawn in two block tall spaces when creeping. (Ie: strip mines.)
execute as @e[type=interaction,tag=watching.spread_entity] at @s unless block ~ ~ ~ #lunareclipse.watching:ground_correction/no_col_blocks run function lunareclipse.watching:sightings/ground_correction/init

# If the base entity is farther than the max_distance parameter then remove it. - (Checks for custom because we don't want the Herobrine disappearing when a player spawns him on them.)
$execute unless data storage lunareclipse.watching:global_values {sightings:{type:"custom"}} as @e[type=interaction,tag=watching.spread_entity] at @s unless entity @a[distance=0.4..$(max_distance)] run function lunareclipse.watching:sightings/models/remove
# Set the max_distance variable.
$data modify storage lunareclipse.watching:global_values sightings.max_distance set value $(max_distance)

# If Herobrine doesn't exist it means he spawned outside of the max radius or his ground correction killed him somehow, retry. (If they are in water don't retry.)
execute unless entity @e[type=minecraft:interaction,tag=watching.spread_entity] unless block ~ ~-1 ~ water run return run function lunareclipse.watching:sightings/retry_sighting with storage lunareclipse.watching:global_values sightings
# If the code makes it to this point reset the retry limit scoreboard.
scoreboard players reset sighting_retry_limit watching.global_values

# Schedule the despawn timer for $(despawn_timer) seconds.
$schedule function lunareclipse.watching:sightings/models/despawn $(despawn_timer)s

# Schedule the sneaky strike timer, which should always be 3 seconds before the main timer.
$scoreboard players set temp_strike_attempt watching.global_values $(despawn_timer)
scoreboard players remove temp_strike_attempt watching.global_values 3
execute store result storage lunareclipse.watching:global_values sightings.temp.strike_attempt.timer int 1 run scoreboard players get temp_strike_attempt watching.global_values
# Schedule the attempt.
execute if data storage lunareclipse.watching:global_values {sightings:{sneaky_strike:"true"}} if data storage lunareclipse.watching:config_options {options:{sneaky_strike:"true"}} run function lunareclipse.watching:sightings/sneaky_strike/schedule_attempt with storage lunareclipse.watching:global_values sightings.temp.strike_attempt
# Remove the info from the storage variables and scoreboards.
data remove storage lunareclipse.watching:global_values sightings.temp.strike_attempt
scoreboard players reset temp_strike_attempt watching.global_values

# Forceload the chunks that Herobrine is standing in, this is done to ensure that the cleanup function always runs.
execute as @e[type=interaction,tag=watching.spread_entity] at @s run forceload add ~ ~

# Summon the model that Herobrine will use.
schedule function lunareclipse.watching:sightings/models/schedule_create 10t

# Set Herobrine to face the nearest player.
data modify storage lunareclipse.watching:global_values sightings.face_player set value "true"

# Set Herobrine's body rotation to delay.
data modify storage lunareclipse.watching:global_values sightings.clamp_rotation set value "true"

# Set Herobrine's body rotation to update.
data modify storage lunareclipse.watching:global_values sightings.body_rotation set value "true"

# Determine whether or not dogs will growl at Herobrine. - Roll a chance
function lunareclipse.watching:utils/determine_chance/common {mechanic:"sighting_sense"}
# If the randomizer's value is 1 then dogs will react.
execute if score sighting_sense_roll watching.global_values matches 1 run data modify storage lunareclipse.watching:global_values sightings.sighting_sense set value "true"
# Clear the sighting sense scoreboard.
scoreboard players reset sighting_sense_roll watching.global_values

# Send a message.
$function lunareclipse.watching:debug/message {message: "Sighting Spawned", status: "1", info: {"Sighting Type": "$(type)", "Custom Sighting": "$(custom)"}, info_list: ["Sighting Type", "Custom Sighting"]}

# Log the sighting for testing purposes.
# $say $(type)