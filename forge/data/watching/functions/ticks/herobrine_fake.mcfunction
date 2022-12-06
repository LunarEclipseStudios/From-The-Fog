##animate
#head
execute as @s[type=villager,tag=moveFake,tag=seenFake] store result entity @e[type=armor_stand,tag=headFake,tag=seenFake,limit=1,sort=nearest] Pose.Head[1] float 1 run data get entity @s Rotation[1] 0
execute as @s[type=villager,tag=moveFake,tag=seenFake] store result entity @e[type=armor_stand,tag=headFake,tag=seenFake,limit=1,sort=nearest] Pose.Head[0] float 1 run data get entity @s Rotation[1] 1

execute as @s[type=villager,tag=moveFake,tag=seenFake] store result entity @e[type=armor_stand,tag=eyesFake,tag=seenFake,limit=1,sort=nearest] Pose.Head[1] float 1 run data get entity @s Rotation[1] 0
execute as @s[type=villager,tag=moveFake,tag=seenFake] store result entity @e[type=armor_stand,tag=eyesFake,tag=seenFake,limit=1,sort=nearest] Pose.Head[0] float 1 run data get entity @s Rotation[1] 1


#arms
execute as @s[type=armor_stand,tag=bodyFake,tag=arm_pos,tag=seenFake] run scoreboard players add @s arm_pos 1
execute as @s[type=armor_stand,tag=bodyFake,tag=!arm_pos,tag=seenFake] run scoreboard players remove @s arm_pos 1

execute as @s[type=armor_stand,tag=bodyFake,tag=seenFake,scores={arm_pos=0}] run tag @s add arm_pos
execute as @s[type=armor_stand,tag=bodyFake,tag=seenFake,scores={arm_pos=38..}] run tag @s remove arm_pos

execute as @s[type=armor_stand,tag=bodyFake,tag=seenFake] store result entity @s Pose.RightArm[2] float 0.16 run scoreboard players get @s arm_pos
execute as @s[type=armor_stand,tag=bodyFake,tag=seenFake] store result entity @s Pose.LeftArm[2] float -0.16 run scoreboard players get @s arm_pos