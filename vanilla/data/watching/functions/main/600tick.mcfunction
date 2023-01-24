#600tick
schedule function watching:main/600tick 30s

#traceForceloads
execute as @e[type=marker,tag=doorTrace] at @s run forceload add ~ ~
execute as @e[type=marker,tag=torchTrace] at @s run forceload add ~ ~
execute as @e[type=marker,tag=bedTrace] at @s run forceload add ~ ~