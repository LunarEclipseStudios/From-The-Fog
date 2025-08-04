# This function is slowly used to allow us to see what rotations are what. You're welcome future Bret.
execute if score head_rotation_yaw watching.animations matches 160..180 run return run say north
execute if score head_rotation_yaw watching.animations matches 120..159 run return run say north-west
execute if score head_rotation_yaw watching.animations matches 70..119 run return run say west
execute if score head_rotation_yaw watching.animations matches 30..69 run return run say south-west
execute if score head_rotation_yaw watching.animations matches -29..29 run return run say south
execute if score head_rotation_yaw watching.animations matches -69..-30 run return run say south-east
execute if score head_rotation_yaw watching.animations matches -119..-70 run return run say east
execute if score head_rotation_yaw watching.animations matches -159..-120 run return run say north-east
execute if score head_rotation_yaw watching.animations matches -180..-160 run return run say north