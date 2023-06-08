#findBed
execute as @e[type=marker,tag=bedTrace,tag=!found,sort=nearest,limit=1] at @s if block ~ ~ ~ #minecraft:beds run tag @s add found

#raycastMarker
execute positioned ~ ~ ~ run tp @e[type=marker,tag=bedTrace,tag=!found] ~ ~ ~ ~ ~

#increaseScoreboard
scoreboard players add @s ftf.raycastLimit 1

#completeCheck
execute if score @s ftf.raycastLimit matches 11.. run function watching:events/block_detection/technical/placed_bed/complete_check

#loopFunction
execute if score @s ftf.raycastLimit matches ..10 positioned ^ ^ ^0.5 run function watching:events/block_detection/technical/placed_bed/raycast