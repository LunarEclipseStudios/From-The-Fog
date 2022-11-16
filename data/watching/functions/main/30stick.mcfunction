#15stick
schedule function watching:main/30stick 30s

execute as @e[type=marker,tag=torch_trace] at @s run forceload add ~ ~
execute as @e[type=marker,tag=bed_trace] at @s run forceload add ~ ~

#chestCheck
#execute as @a at @s run function watching:events/check_for_chest_summon
