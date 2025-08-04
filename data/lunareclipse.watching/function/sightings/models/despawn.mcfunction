# Give the player the advancement if advancements are enabled.
execute at @e[type=minecraft:armor_stand,tag=watching.ai,limit=1] if entity @p[advancements={from_the_fog:root=true}] run advancement grant @p only from_the_fog:haunting/missed_herobrine

# Remove the sign placement variable. This will make it so if Herobrine despawns the sign will not place.
scoreboard players reset spotted_sign watching.global_values

# Remove Herobrine.
function lunareclipse.watching:sightings/models/remove