# Check if the animation for any a specific part has updated.
execute if entity @s[tag=watching.head] if score head_update watching.animations matches 1..2 run function lunareclipse.watching:sightings/animations/rotate {part:"head"}
execute if entity @s[tag=watching.body] if score body_update watching.animations matches 1..2 run function lunareclipse.watching:sightings/animations/rotate {part:"body"}
execute if entity @s[tag=watching.left_arm] if score left_arm_update watching.animations matches 1..2 run function lunareclipse.watching:sightings/animations/rotate {part:"left_arm"}
execute if entity @s[tag=watching.right_arm] if score right_arm_update watching.animations matches 1..2 run function lunareclipse.watching:sightings/animations/rotate {part:"right_arm"}
execute if entity @s[tag=watching.right_arm_item] if score right_arm_item_update watching.animations matches 1..2 run function lunareclipse.watching:sightings/animations/rotate {part:"right_arm_item"}
execute if entity @s[tag=watching.left_leg] if score left_leg_update watching.animations matches 1..2 run function lunareclipse.watching:sightings/animations/rotate {part:"left_leg"}
execute if entity @s[tag=watching.right_leg] if score right_leg_update watching.animations matches 1..2 run function lunareclipse.watching:sightings/animations/rotate {part:"right_leg"}
execute if entity @s[tag=watching.left_leg2] if score left_leg2_update watching.animations matches 1..2 run function lunareclipse.watching:sightings/animations/rotate {part:"left_leg2"}
execute if entity @s[tag=watching.right_leg2] if score right_leg2_update watching.animations matches 1..2 run function lunareclipse.watching:sightings/animations/rotate {part:"right_leg2"}
execute if entity @s[tag=watching.left_leg3] if score left_leg3_update watching.animations matches 1..2 run function lunareclipse.watching:sightings/animations/rotate {part:"left_leg3"}
execute if entity @s[tag=watching.right_leg3] if score right_leg3_update watching.animations matches 1..2 run function lunareclipse.watching:sightings/animations/rotate {part:"right_leg3"}

# Rotate the y axis of the head to match the yaw.
execute if entity @s[tag=watching.head] store result entity @s Rotation[0] float 1 run scoreboard players get head_rotation_yaw watching.animations
# Divide the pitch by 0.008 to get the x axis of the head.
execute if entity @s[tag=watching.head] run data modify entity @s start_interpolation set value -1
execute if entity @s[tag=watching.head] run data modify entity @s interpolation_duration set value 5
execute if entity @s[tag=watching.head] store result entity @s transformation.left_rotation[0] float 0.008 run scoreboard players get head_rotation_pitch watching.animations

# Store the head's and body's rotations (yaw).
execute if entity @s[tag=!watching.head] if data storage lunareclipse.watching:global_values {sightings:{body_rotation:"true"}} store result score body_rotation watching.animations run data get entity @s Rotation[0]

# Run the rotation math.
function lunareclipse.watching:sightings/models/rotation_math
