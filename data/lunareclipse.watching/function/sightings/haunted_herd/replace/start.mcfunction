# Store the rotation of the fake animal inside of a storage variable.
execute store result storage lunareclipse.watching:global_values sightings.haunted_herd.yaw float 1 run scoreboard players get head_rotation_yaw watching.animations
execute store result storage lunareclipse.watching:global_values sightings.haunted_herd.pitch float 1 run scoreboard players get head_rotation_pitch watching.animations

# Run a function with the rotation that will spawn the mob.
execute as @e[type=minecraft:armor_stand,tag=watching.ai,limit=1] at @s rotated ~ 0 positioned ^ ^ ^-0.35 run function lunareclipse.watching:sightings/haunted_herd/replace/summon with storage lunareclipse.watching:global_values sightings.haunted_herd