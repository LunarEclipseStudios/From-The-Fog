# If the scoreboard exceeds the limit then stop the loop.
execute if score @s watching.raycast matches 256.. run return 0

# Check if the raycast has gone through glass or not.
execute if data storage lunareclipse.watching:config_options {options:{window_watcher:"true"}} positioned ~ ~-0.1 ~ if block ~ ~ ~ #lunareclipse.watching:player_spotted/glass run scoreboard players set glass_spotted watching.global_values 1

# If the raycast finds a spread entity then he was still trying to spawn and we should retry the sighting.
execute positioned ~ ~-0.1 ~ as @e[type=minecraft:interaction,tag=watching.spread_entity,distance=..2.2] at @s run function lunareclipse.watching:sightings/retry_sighting with storage lunareclipse.watching:global_values sightings

# Increment the raycast scoreboard.
scoreboard players add @s watching.raycast 1


# Run any player events.
execute positioned ~ ~-0.1 ~ if entity @e[type=#lunareclipse.watching:herobrine,tag=watching.herobrine,tag=!watching.spread_entity,distance=..2.2] run function lunareclipse.watching:sightings/player_spotted/spotted/player_event

# If Herobrine is light reactant then stop the player from spotting him. (Unless it's the spread entity.)
execute positioned ~ ~-0.1 ~ as @e[type=#lunareclipse.watching:herobrine,tag=watching.herobrine,distance=..2.2] at @s if data storage lunareclipse.watching:global_values {sightings:{light_reactant:"true"}} unless entity @e[type=interaction,tag=watching.spread_entity] run return 0

# If the raycast has made it within 2.2 blocks of a herobrine base entity then the player has spotted him.
execute positioned ~ ~-0.1 ~ as @e[type=#lunareclipse.watching:herobrine,tag=watching.herobrine,distance=..2.2] at @s run return run function lunareclipse.watching:sightings/player_spotted/spotted/spotted

# If the global playerSpotted value isn't 1, and the current block that is being checked is air then run sighting tick again to iterate forward another block.
execute unless score player_spotted watching.global_values matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ #lunareclipse.watching:player_spotted/sight_blocks run function lunareclipse.watching:sightings/player_spotted/search