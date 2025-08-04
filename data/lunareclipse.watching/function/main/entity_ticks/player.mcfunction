# Define the rules for the player spotted mechanic.
function lunareclipse.watching:sightings/player_spotted/init with storage lunareclipse.watching:global_values sightings

# Define the rules for the twisted tapestry spotting mechanic
function lunareclipse.watching:twisted_tapestries/player_spotted/init

# If the player having a nightmare is no longer in bed then remove the nightmare Herobrine.
execute if data storage lunareclipse.watching:global_values {sightings:{type:"nightmare"}} if entity @s[tag=watching.having_nightmare] unless block ~ ~ ~ #beds[occupied=true] run function lunareclipse.watching:sightings/end_nightmare

# If the player has the config open then raycast to find the option they are looking at.
execute if entity @s[tag=watching.opened_config] if predicate lunareclipse.watching:checks/looking_at_option anchored eyes run function lunareclipse.watching:config/option_tip/raycast
# Remove any existing text displays with the specified tag.
execute if entity @s[tag=watching.opened_config] unless predicate lunareclipse.watching:checks/looking_at_option anchored eyes run kill @e[type=text_display,tag=watching.tip]

# If the player collides with Herobrine then jumpscare them.
execute if data storage lunareclipse.watching:global_values {sightings:{jumpscare:"true"}} unless entity @s[gamemode=spectator] unless score player_spotted watching.global_values matches 1 if entity @e[type=#lunareclipse.watching:herobrine,tag=watching.herobrine,distance=..2] run function lunareclipse.watching:sightings/sudden_scare/init