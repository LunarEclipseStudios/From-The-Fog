execute if score @s ftf.turnAround matches 15.. run tag @e[type=armor_stand,tag=secondaryRotate] add pauseRot
execute if score @s ftf.turnAround matches 15.. run tp @s ~ ~ ~ ~12 ~
execute if score @s ftf.turnAround matches 12.. run tp @e[type=armor_stand,tag=secondaryRotate] ~ ~ ~ ~7 ~
scoreboard players add @s ftf.turnAround 1
execute if score @s ftf.turnAround matches 29.. run function watching:events/sightings/spotted/run_away_pathfinding/start