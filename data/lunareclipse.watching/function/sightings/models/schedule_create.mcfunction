# Store the selected skin list.
execute if data storage lunareclipse.watching:global_values {sightings:{type:"haunted_herd"}} run data modify storage lunareclipse.watching:config_options options.herobrine_skin.temp_list set from storage lunareclipse.watching:config_options options.herobrine_skin.list
# Choose a random mob.
execute if data storage lunareclipse.watching:global_values {sightings:{type:"haunted_herd"}} as @e[type=interaction,tag=watching.spread_entity] at @s unless biome ~ ~ ~ #lunareclipse.watching:spawns_frog run function lunareclipse.utils:random_value/start {array:["pig", "cow"],command:"lunareclipse.watching:sightings/haunted_herd/variant/init"}
execute if data storage lunareclipse.watching:global_values {sightings:{type:"haunted_herd"}} as @e[type=interaction,tag=watching.spread_entity] at @s if biome ~ ~ ~ #lunareclipse.watching:spawns_frog run function lunareclipse.utils:random_value/start {array:["frog"],command:"lunareclipse.watching:sightings/haunted_herd/variant/init"}

# Remove any skins from the array that no longer exist.
function lunareclipse.utils:forloop/start {target:"lunareclipse.watching:config_options",path:"options.herobrine_skin.list",command:"lunareclipse.watching:sightings/models/technical/check_skins"}

# Initialize the array counter.
scoreboard players set skin_array_length watching.global_values -1
# Get the length of the skin array.
function lunareclipse.utils:forloop/start {target:"lunareclipse.watching:config_options",path:"options.herobrine_skin.list",command:"lunareclipse.watching:sightings/models/technical/increment_array_length"}
# Save the length to a storage variable.
execute store result storage lunareclipse.watching:config_options options.herobrine_skin.length int 1 run scoreboard players get skin_array_length watching.global_values
# Remove the length from the scoreboard.
scoreboard players reset skin_array_length watching.global_values
# Grab a random number between 0 and the length to select the skin.
function lunareclipse.watching:sightings/models/technical/roll_skin with storage lunareclipse.watching:config_options options.herobrine_skin

# If the hoebrine skin is on then default to that.
execute if data storage lunareclipse.watching:config_options {options:{hoebrine_returns:"true"}} as @e[type=interaction,tag=watching.spread_entity] at @s run return run function lunareclipse.watching:sightings/models/create {selected: "hoebrine"}
# Summon the models on the spread entity.
execute as @e[type=interaction,tag=watching.spread_entity] at @s run function lunareclipse.watching:sightings/models/create with storage lunareclipse.watching:config_options options.herobrine_skin

# Move the skin list back.
execute if data storage lunareclipse.watching:global_values {sightings:{type:"haunted_herd"}} run data modify storage lunareclipse.watching:config_options options.herobrine_skin.list set from storage lunareclipse.watching:config_options options.herobrine_skin.temp_list
# Clear the temp list.
execute if data storage lunareclipse.watching:global_values {sightings:{type:"haunted_herd"}} run data remove storage lunareclipse.watching:config_options options.herobrine_skin.temp_list