# Return the correct rotations.
execute if score head_rotation_yaw watching.animations matches 160..180 run return 8
execute if score head_rotation_yaw watching.animations matches 120..159 run return 6
execute if score head_rotation_yaw watching.animations matches 70..119 run return 4
execute if score head_rotation_yaw watching.animations matches 30..69 run return 2
execute if score head_rotation_yaw watching.animations matches -29..29 run return 0
execute if score head_rotation_yaw watching.animations matches -69..-30 run return 14
execute if score head_rotation_yaw watching.animations matches -119..-70 run return 12
execute if score head_rotation_yaw watching.animations matches -159..-120 run return 10
execute if score head_rotation_yaw watching.animations matches -180..-160 run return 8