#legAnimations
execute if entity @s[type=armor_stand,tag=rightLegPos] run scoreboard players add @s rightLegPos 12
execute if entity @s[type=armor_stand,tag=!rightLegPos] run scoreboard players remove @s rightLegPos 12
execute if score @s rightLegPos matches ..-30 run tag @s add rightLegPos
execute if score @s rightLegPos matches 30.. run tag @s remove rightLegPos
execute as @s[type=armor_stand,tag=leftLegPos] run scoreboard players remove @s leftLegPos 12
execute as @s[type=armor_stand,tag=!leftLegPos] run scoreboard players add @s leftLegPos 12
execute if score @s leftLegPos matches ..-30 run tag @s remove leftLegPos
execute if score @s leftLegPos matches 30.. run tag @s add leftLegPos
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s rightLegPos
execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s leftLegPos

#armAnimations
execute as @e[type=armor_stand,tag=body,tag=seen,distance=..2] store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @e[tag=legs,limit=1] leftLegPos
execute as @e[type=armor_stand,tag=body,tag=seen,distance=..2] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @e[tag=legs,limit=1] rightLegPos

#fixOffsetHead
execute as @e[type=armor_stand,tag=headRotation,tag=seen,distance=..2] run data merge entity @s {Air:1}