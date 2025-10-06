# Create the ticking function for the Herobrine models.
execute if entity @s[type=item_display,tag=watching.model] run function lunareclipse.watching:main/entity_ticks/herobrine_model

# Handle the position and rotation of the mannequin.
execute if data storage lunareclipse.watching:config_options {options:{vanilla_sightings:"true"}} if entity @s[type=mannequin,tag=watching.mannequin] at @e[type=armor_stand,tag=watching.ai,limit=1] run tp ~ ~ ~
execute if data storage lunareclipse.watching:config_options {options:{vanilla_sightings:"true"}} if entity @s[type=mannequin,tag=watching.mannequin] store result entity @s Rotation[0] float 1 run scoreboard players get head_rotation_yaw watching.animations
execute if data storage lunareclipse.watching:config_options {options:{vanilla_sightings:"true"}} if entity @s[type=mannequin,tag=watching.mannequin] store result entity @s Rotation[1] float 1 run scoreboard players get head_rotation_pitch watching.animations

# Handle the rotation of Herobrine.
execute if entity @s[type=armor_stand,tag=watching.ai] if data storage lunareclipse.watching:global_values temp.sighting_rotation run function lunareclipse.watching:sightings/animations/rotate/increment with storage lunareclipse.watching:global_values temp.sighting_rotation

# Make the ai face the nearest player.
execute if data storage lunareclipse.watching:global_values {sightings:{face_player:"true"}} if entity @s[type=armor_stand,tag=watching.ai] run rotate @s facing entity @p[gamemode=!spectator]
# Store the rotation of the ai in a scoreboard this helps reduce @e entity checks.
execute if entity @s[type=armor_stand,tag=watching.ai] store result score head_rotation_yaw watching.animations run data get entity @s Rotation[0]
execute if entity @s[type=armor_stand,tag=watching.ai] unless data storage lunareclipse.watching:global_values {sightings:{type:"nightmare"}} store result score head_rotation_pitch watching.animations run data get entity @s Rotation[1]
# If a nightmare is occuring force the head to look down.
execute if entity @s[type=armor_stand,tag=watching.ai] if data storage lunareclipse.watching:global_values {sightings:{type:"nightmare"}} run scoreboard players set head_rotation_pitch watching.animations 15

# If the block below the base entity is a block without collision and it isn't a block from pause raycast then run the ground correction function.
execute if entity @s[type=armor_stand,tag=watching.ai] if block ~ ~-0.1 ~ #lunareclipse.watching:ground_correction/no_col_blocks run function lunareclipse.watching:sightings/ground_correction/init
# If the current block the base entity is standing in is a solid block not located in "no_col_blocks" then run the ground correction function. This is done to ensure Herobrine can spawn in two block tall spaces when creeping. (Ie: strip mines.)
execute if entity @s[type=armor_stand,tag=watching.ai] unless block ~ ~ ~ #lunareclipse.watching:ground_correction/no_col_blocks run function lunareclipse.watching:sightings/ground_correction/init

# If the base entity's head is is inside of a solid block then kill Herobrine.
execute if entity @s[type=armor_stand,tag=watching.ai] unless block ~ ~1 ~ #lunareclipse.watching:ground_correction/no_col_blocks run function lunareclipse.watching:sightings/models/remove
# If the base entity's head is is inside of a leaf block then kill Herobrine.
execute if entity @s[type=armor_stand,tag=watching.ai] if block ~ ~1 ~ #minecraft:leaves run function lunareclipse.watching:sightings/models/remove
# If the base entity is standing inside of water then kill Herobrine.
execute if entity @s[type=armor_stand,tag=watching.ai] if block ~ ~ ~ #lunareclipse.watching:liquid run function lunareclipse.watching:sightings/models/remove
# If herobrine is too far from the player then remove him.
function lunareclipse.watching:sightings/distance_check with storage lunareclipse.watching:global_values sightings

# If Herobrine is light reactant and the light level he is standing in is over 8 then make him not light reactant.
execute if data storage lunareclipse.watching:global_values {sightings:{light_reactant:"true"}} if predicate lunareclipse.watching:checks/is_too_bright run data modify storage lunareclipse.watching:global_values sightings.light_reactant set value "false"

# If Herobrine is light reactant and the player gets too close then make him disappear.
execute if data storage lunareclipse.watching:global_values {sightings:{light_reactant:"true"}} if entity @a[distance=..3] run function lunareclipse.watching:sightings/models/remove

# If Herobrine is a haunted herd mob and the player gets too close then make him disappear.
execute if data storage lunareclipse.watching:global_values {sightings:{type:"haunted_herd"}} if entity @a[distance=..7] run function lunareclipse.watching:sightings/haunted_herd/replace/start

# Check if there is an arrow within 1.5 blocks of Herobrine if there is then we can assume he's been shot.
execute if entity @s[type=interaction,tag=watching.hitbox] positioned ~ ~1 ~ as @e[type=#minecraft:arrows,distance=..1.5] run function lunareclipse.watching:sightings/shot_herobrine

# If the slip behind mechanic is set to left or right move him accordingly.
execute if data storage lunareclipse.watching:global_values {sightings:{slip_behind:"left"}} if entity @s[type=armor_stand,tag=watching.ai] rotated ~ 0 run tp ^0.1 ^ ^
execute if data storage lunareclipse.watching:global_values {sightings:{slip_behind:"right"}} if entity @s[type=armor_stand,tag=watching.ai] rotated ~ 0 run tp ^-0.1 ^ ^