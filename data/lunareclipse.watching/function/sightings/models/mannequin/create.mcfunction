# Make the ai face the nearest player.
execute if data storage lunareclipse.watching:global_values {sightings:{face_player:"true"}} as @e[type=armor_stand,tag=watching.ai] run rotate @s facing entity @p[gamemode=!spectator]
# Store the rotation of Herobrine inside of a storage variable. - Reusing the haunted herd locations as they get cleared on cleanup.
execute as @e[type=armor_stand,tag=watching.ai] store result storage lunareclipse.watching:global_values sightings.haunted_herd.yaw float 1 run data get entity @s Rotation[0]
execute as @e[type=armor_stand,tag=watching.ai] store result storage lunareclipse.watching:global_values sightings.haunted_herd.pitch float 1 run data get entity @s Rotation[1]
# Create the mannequin.
function lunareclipse.watching:sightings/models/mannequin/summon with storage lunareclipse.watching:global_values sightings.haunted_herd