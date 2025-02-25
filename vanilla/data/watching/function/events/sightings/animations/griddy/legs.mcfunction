#legAnimations
execute if entity @s[type=armor_stand,tag=ftf.rightLegPos] run scoreboard players add @s ftf.rightLegPos 4
execute if entity @s[type=armor_stand,tag=!ftf.rightLegPos] run scoreboard players remove @s ftf.rightLegPos 4
execute if score @s ftf.rightLegPos matches ..-25 run tag @s add ftf.rightLegPos
execute if score @s ftf.rightLegPos matches 10.. run tag @s remove ftf.rightLegPos
execute as @s[type=armor_stand,tag=ftf.leftLegPos] run scoreboard players remove @s ftf.leftLegPos 4
execute as @s[type=armor_stand,tag=!ftf.leftLegPos] run scoreboard players add @s ftf.leftLegPos 4
execute if score @s ftf.leftLegPos matches ..-25 run tag @s remove ftf.leftLegPos
execute if score @s ftf.leftLegPos matches 10.. run tag @s add ftf.leftLegPos
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s ftf.rightLegPos
execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s ftf.leftLegPos