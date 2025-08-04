# Normalize head and body rotations (range -180 to 180).
execute if score head_rotation_yaw watching.animations matches 181.. run scoreboard players remove head_rotation_yaw watching.animations 360
execute if score head_rotation_yaw watching.animations matches ..-181 run scoreboard players add head_rotation_yaw watching.animations 360
execute if score body_rotation watching.animations matches 181.. run scoreboard players remove body_rotation watching.animations 360
execute if score body_rotation watching.animations matches ..-181 run scoreboard players add body_rotation watching.animations 360

# Calculate and normalize rotation difference (range -180 to 180).
scoreboard players operation rotation_diff_raw watching.animations = head_rotation_yaw watching.animations
scoreboard players operation rotation_diff_raw watching.animations -= body_rotation watching.animations
execute if score rotation_diff_raw watching.animations matches 181.. run scoreboard players remove rotation_diff_raw watching.animations 360
execute if score rotation_diff_raw watching.animations matches ..-181 run scoreboard players add rotation_diff_raw watching.animations 360

# Rotate the body toward the head if the difference exceeds 45 degrees.
execute if score rotation_diff_raw watching.animations matches 46.. run scoreboard players add body_rotation watching.animations 5
execute if score rotation_diff_raw watching.animations matches ..-46 run scoreboard players remove body_rotation watching.animations 5
# Clamp the body. - This repeats so much to account for the garbage under a certain number.
execute if data storage lunareclipse.watching:global_values {sightings:{clamp_rotation:"false"}} if score rotation_diff_raw watching.animations matches 4.. run scoreboard players add body_rotation watching.animations 4
execute if data storage lunareclipse.watching:global_values {sightings:{clamp_rotation:"false"}} if score rotation_diff_raw watching.animations matches ..-4 run scoreboard players remove body_rotation watching.animations 4
execute if data storage lunareclipse.watching:global_values {sightings:{clamp_rotation:"false"}} if score rotation_diff_raw watching.animations matches 3.. run scoreboard players add body_rotation watching.animations 2
execute if data storage lunareclipse.watching:global_values {sightings:{clamp_rotation:"false"}} if score rotation_diff_raw watching.animations matches ..-3 run scoreboard players remove body_rotation watching.animations 2
# Log the clamp.
execute if data storage lunareclipse.watching:global_values {sightings:{clamp_rotation:"false"}} if score rotation_diff_raw watching.animations matches -2..2 run function lunareclipse.watching:sightings/animations/clamped

# Force the body to face as far to the side as possible.
execute if data storage lunareclipse.watching:global_values {sightings:{slip_behind:"left"}} if score rotation_diff_raw watching.animations matches ..-25 run scoreboard players remove body_rotation watching.animations 8
execute if data storage lunareclipse.watching:global_values {sightings:{slip_behind:"right"}} if score rotation_diff_raw watching.animations matches 25.. run scoreboard players add body_rotation watching.animations 8
execute if data storage lunareclipse.watching:global_values {sightings:{slip_behind:"left"}} if score rotation_diff_raw watching.animations matches -25.. run scoreboard players remove body_rotation watching.animations 5
execute if data storage lunareclipse.watching:global_values {sightings:{slip_behind:"right"}} if score rotation_diff_raw watching.animations matches ..25 run scoreboard players add body_rotation watching.animations 5

# Wrap the body's rotation to range -180 to 180 after adjustments.
execute if score body_rotation watching.animations matches 181.. run scoreboard players remove body_rotation watching.animations 360
execute if score body_rotation watching.animations matches ..-181 run scoreboard players add body_rotation watching.animations 360

# Apply the updated body rotation to the entity.
execute if entity @s[tag=!watching.head] store result entity @s Rotation[0] float 1 run scoreboard players get body_rotation watching.animations