#armAnimations
execute if entity @s[type=armor_stand,tag=ftf.rightArmPos] run scoreboard players add @s ftf.rightArmPos 10
execute if entity @s[type=armor_stand,tag=!ftf.rightArmPos] run scoreboard players remove @s ftf.rightArmPos 10
execute if score @s ftf.rightArmPos matches ..-40 run tag @s add ftf.rightArmPos
execute if score @s ftf.rightArmPos matches 30.. run tag @s remove ftf.rightArmPos
execute as @s[type=armor_stand,tag=ftf.leftArmPos] run scoreboard players add @s ftf.leftArmPos 10
execute as @s[type=armor_stand,tag=!ftf.leftArmPos] run scoreboard players remove @s ftf.leftArmPos 10
execute if score @s ftf.leftArmPos matches ..-40 run tag @s add ftf.leftArmPos
execute if score @s ftf.leftArmPos matches 30.. run tag @s remove ftf.leftArmPos
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s ftf.rightArmPos
execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s ftf.leftArmPos

#legAnimations
execute as @e[type=armor_stand,tag=legs] at @s run function watching:events/sightings/animations/griddy/legs
