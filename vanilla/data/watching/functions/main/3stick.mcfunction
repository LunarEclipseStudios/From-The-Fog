#3sTick
schedule function watching:main/3stick 2s

##animate
execute as @e[tag=seen,tag=!head,tag=!eyes,tag=!move] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator] 

##armor_stand_replace
execute as @e[tag=torch_trace,type=armor_stand,tag=found] at @s run function watching:torch_check/replace_armor_stands

