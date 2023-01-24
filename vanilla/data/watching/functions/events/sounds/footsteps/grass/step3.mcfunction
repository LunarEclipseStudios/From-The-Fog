execute at @e[type=marker,tag=footstepsEmitter] run playsound block.grass.step hostile @a ^ ^ ^-1 0.4
execute at @e[type=marker,tag=footstepsEmitter] if predicate watching:chances/number/50 run function watching:events/sounds/ambient
execute as @e[type=marker,tag=footstepsEmitter] run kill @s