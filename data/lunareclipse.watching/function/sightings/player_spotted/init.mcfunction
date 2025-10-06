# List of variables used:
# "type" - The type of Herobrine being checked for.
# "spot_fov" - The radius in which Herobrine is searched for on screen.

# Reset the raycast scoreboard.
scoreboard players reset @s watching.raycast
scoreboard players reset @s watching.raycast2

# If the player has Herobrine on screen, and Herobrine is within 80 blocks of the player then run the player spotted tick function.
$execute unless score player_spotted watching.global_values matches 1 unless entity @s[gamemode=spectator] if entity @e[type=#lunareclipse.watching:herobrine,tag=watching.herobrine,distance=..80] anchored eyes facing entity @e[type=#lunareclipse.watching:herobrine,tag=watching.herobrine,distance=..80] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.$(spot_fov)] anchored eyes facing entity @e[type=#lunareclipse.watching:herobrine,tag=watching.herobrine] eyes positioned ^ ^ ^ run function lunareclipse.watching:sightings/player_spotted/search

# Run a second smaller clamped check for suspenseful sighting. - If spot fov is set to 0 then the check should not occur.
execute unless data storage lunareclipse.watching:config_options {options:{suspenseful_sighting:"off"}} unless data storage lunareclipse.watching:global_values {sightings:{spot_fov:"0"}} unless entity @s[gamemode=spectator] if entity @e[type=#lunareclipse.watching:herobrine,tag=watching.herobrine,distance=..80] anchored eyes facing entity @e[type=#lunareclipse.watching:herobrine,tag=watching.herobrine,distance=..80] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.40] anchored eyes facing entity @e[type=#lunareclipse.watching:herobrine,tag=watching.herobrine] eyes positioned ^ ^ ^ run function lunareclipse.watching:sightings/player_spotted/spotted/suspenseful_strike