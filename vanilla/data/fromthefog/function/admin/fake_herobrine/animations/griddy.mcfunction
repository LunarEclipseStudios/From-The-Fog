execute as @e[type=armor_stand,tag=fake,sort=nearest] at @s if entity @e[tag=griddy] run tag @s add toggleOffGriddy
execute as @e[type=armor_stand,tag=fake,sort=nearest] at @s run tag @e[type=armor_stand,tag=body] add griddy
execute as @e[type=armor_stand,tag=fake,sort=nearest] at @s as @e[tag=body] at @s run data merge entity @s {Pose:{LeftArm:[0f,20f,0f],RightArm:[0f,340f,0f]}}
execute as @e[type=armor_stand,tag=fake,tag=toggleOffGriddy,sort=nearest] at @s run tag @e[type=armor_stand,tag=body,tag=griddy] remove griddy
execute as @e[type=armor_stand,tag=fake,tag=toggleOffGriddy,sort=nearest] at @s as @e[tag=body] at @s run data merge entity @s {Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=fake,tag=toggleOffGriddy,sort=nearest] at @s as @e[tag=legs] at @s run data merge entity @s {Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=fake,sort=nearest] at @s run tag @s remove toggleOffGriddy
