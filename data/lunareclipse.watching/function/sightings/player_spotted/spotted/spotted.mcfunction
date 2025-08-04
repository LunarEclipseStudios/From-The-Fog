# Set the global player_spotted value to 1 to help indicate that Herobrine has been spotted and the check is no longer needed.
execute unless score glass_spotted watching.global_values matches 1 run scoreboard players set player_spotted watching.global_values 1

# If we are removing the spread entity then remove it instantly.
execute if entity @e[type=minecraft:interaction,tag=watching.spread_entity] run function lunareclipse.watching:sightings/models/remove

# If the player is too close then instantly switch the mob.
execute if data storage lunareclipse.watching:global_values {sightings:{type:"haunted_herd"}} if entity @a[distance=..20] run return run function lunareclipse.watching:sightings/haunted_herd/replace/start
# If it's a haunted herd mob then trigger it's rotation.
execute if data storage lunareclipse.watching:global_values {sightings:{type:"haunted_herd"}} unless entity @a[distance=..20] run return run schedule function lunareclipse.watching:sightings/haunted_herd/spotted 1s

# If glass spotted is true then run the code past this line. - If not remove the base entity if the conditions are correct.
execute unless score glass_spotted watching.global_values matches 1 run return run function lunareclipse.watching:sightings/player_spotted/spotted/vanish with storage lunareclipse.watching:global_values sightings

# Remove the base entity near instantly if spotted through a window, this command will repeatedly be scheduled until the player actually looks away.
schedule function lunareclipse.watching:sightings/models/remove 0.2s

# Reset the glass spotted variable. This prevents Herobrine from not disappearing when the glass is broken.
scoreboard players reset glass_spotted watching.global_values

# Randomly decide whether or not Herobrine will decide to place a sign when viewed through a window.
execute unless score sinister_signs_roll watching.global_values matches 0.. run function lunareclipse.watching:utils/determine_chance/default {mechanic:"sinister_signs"}
# scoreboard players set sinister_signs_roll watching.global_values 1

# If the value matches 1 then make him place a sign.
execute if data storage lunareclipse.watching:config_options {options:{sinister_signs:"false"}} run return 1
execute unless score sinister_signs_roll watching.global_values matches 1 run return 1

# Put a sign in Herobrine's hand.
execute unless score has_item watching.global_values matches 1 run schedule function lunareclipse.watching:sightings/item/presets/sign 2s
execute unless score has_item watching.global_values matches 1 run scoreboard players set has_item watching.global_values 1

# Add a temporary value to help keep track of whether or not Herobrine has been spotted through a window.
scoreboard players set spotted_sign watching.global_values 1