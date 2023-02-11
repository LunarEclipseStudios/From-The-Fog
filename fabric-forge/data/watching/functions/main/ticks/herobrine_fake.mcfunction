#headAnimations
execute as @s[type=armor_stand,tag=moveFake,tag=seenFake] store result entity @e[type=armor_stand,tag=headFake,tag=seenFake,limit=1,sort=nearest] Pose.Head[1] float 1 run data get entity @s Rotation[1] 0
execute as @s[type=armor_stand,tag=moveFake,tag=seenFake] store result entity @e[type=armor_stand,tag=headFake,tag=seenFake,limit=1,sort=nearest] Pose.Head[0] float 1 run data get entity @s Rotation[1] 1
execute as @s[type=armor_stand,tag=moveFake,tag=seenFake] store result entity @e[type=armor_stand,tag=eyesFake,tag=seenFake,limit=1,sort=nearest] Pose.Head[1] float 1 run data get entity @s Rotation[1] 0
execute as @s[type=armor_stand,tag=moveFake,tag=seenFake] store result entity @e[type=armor_stand,tag=eyesFake,tag=seenFake,limit=1,sort=nearest] Pose.Head[0] float 1 run data get entity @s Rotation[1] 1
#armAnimations
execute as @s[type=armor_stand,tag=bodyFake,tag=armPos,tag=seenFake] run scoreboard players add @s armPos 1
execute as @s[type=armor_stand,tag=bodyFake,tag=!armPos,tag=seenFake] run scoreboard players remove @s armPos 1
execute as @s[type=armor_stand,tag=bodyFake,tag=seenFake] if score @s armPos matches ..0 run tag @s add armPos
execute as @s[type=armor_stand,tag=bodyFake,tag=seenFake] if score @s armPos matches 38.. run tag @s remove armPos
execute as @s[type=armor_stand,tag=bodyFake,tag=seenFake] store result entity @s Pose.RightArm[2] float 0.16 run scoreboard players get @s armPos
execute as @s[type=armor_stand,tag=bodyFake,tag=seenFake] store result entity @s Pose.LeftArm[2] float -0.16 run scoreboard players get @s armPos