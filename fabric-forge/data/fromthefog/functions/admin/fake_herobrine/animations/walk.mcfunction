execute as @e[type=armor_stand,tag=fake,sort=nearest] at @s if entity @e[tag=walking] run tag @s add toggleOffWalk
execute as @e[type=armor_stand,tag=fake,sort=nearest] at @s run tag @e[type=armor_stand,tag=legs] add walking
execute as @e[type=armor_stand,tag=fake,tag=toggleOffWalk,sort=nearest] at @s run tag @e[type=armor_stand,tag=legs,tag=walking] remove walking
execute as @e[type=armor_stand,tag=fake,sort=nearest] at @s run tag @s remove toggleOffWalk