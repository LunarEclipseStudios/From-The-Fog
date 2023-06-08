#clearRaycastScoreboard
scoreboard players reset @s ftf.raycastLimit

#noBed
execute as @e[type=marker,tag=bedTrace,tag=!found] at @s run kill @s

#foundBed
execute as @e[type=marker,tag=bedTrace,tag=found,tag=!logged] at @s run tag @s add logged