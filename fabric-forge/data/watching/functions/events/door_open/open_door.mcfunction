execute as @e[tag=doorGhost] at @s run function watching:events/sounds/ambient
execute as @e[tag=doorGhost] at @s if predicate watching:chances/number/50 run function watching:events/sightings/stalking
execute as @e[tag=doorGhost] at @s run function watching:events/general/kill/kill
