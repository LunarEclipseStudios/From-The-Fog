tag @e[type=armor_stand,tag=secondaryRotate] add pauseRot
tp @s ~ ~ ~ ~15 ~
tp @e[type=armor_stand,tag=secondaryRotate] ~ ~ ~ ~10 ~
scoreboard players add @s turnAround 1
execute if score @s turnAround matches 12.. run function watching:events/sightings/spotted/run_away_pathfinding/start