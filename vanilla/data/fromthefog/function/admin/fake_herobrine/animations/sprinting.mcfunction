execute as @e[type=armor_stand,tag=fake,sort=nearest] at @s if entity @e[tag=sprinting] run tag @s add toggleOffSprint
execute as @e[type=armor_stand,tag=fake,sort=nearest] at @s run tag @e[type=armor_stand,tag=legs] add sprinting
execute as @e[type=armor_stand,tag=fake,tag=toggleOffSprint,sort=nearest] at @s run tag @e[type=armor_stand,tag=legs,tag=sprinting] remove sprinting
execute as @e[type=armor_stand,tag=fake,sort=nearest] at @s run tag @s remove toggleOffSprint