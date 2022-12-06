scoreboard players reset @s torch_placed
#tag @s add torch_placed

##trace
execute anchored eyes run summon marker ^ ^ ^ {Tags:["torch_trace"],NoGravity:1b,Invisible:1b,Small:1b}

execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ torch run function watching:events/torch_true
execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ wall_torch run function watching:events/torch_true

execute anchored eyes run tp @e[type=marker,tag=torch_trace,tag=!found] ^ ^ ^.5

execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ torch run function watching:events/torch_true
execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ wall_torch run function watching:events/torch_true

execute anchored eyes run tp @e[type=marker,tag=torch_trace,tag=!found] ^ ^ ^1

execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ torch run function watching:events/torch_true
execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ wall_torch run function watching:events/torch_true

execute anchored eyes run tp @e[type=marker,tag=torch_trace,tag=!found] ^ ^ ^1.5

execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ torch run function watching:events/torch_true
execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ wall_torch run function watching:events/torch_true

execute anchored eyes run tp @e[type=marker,tag=torch_trace,tag=!found] ^ ^ ^2

execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ torch run function watching:events/torch_true
execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ wall_torch run function watching:events/torch_true

execute anchored eyes run tp @e[type=marker,tag=torch_trace,tag=!found] ^ ^ ^2.5

execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ torch run function watching:events/torch_true
execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ wall_torch run function watching:events/torch_true

execute anchored eyes run tp @e[type=marker,tag=torch_trace,tag=!found] ^ ^ ^3

execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ torch run function watching:events/torch_true
execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ wall_torch run function watching:events/torch_true

execute anchored eyes run tp @e[type=marker,tag=torch_trace,tag=!found] ^ ^ ^3.5

execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ torch run function watching:events/torch_true
execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ wall_torch run function watching:events/torch_true

execute anchored eyes run tp @e[type=marker,tag=torch_trace,tag=!found] ^ ^ ^4

execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ torch run function watching:events/torch_true
execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ wall_torch run function watching:events/torch_true

execute anchored eyes run tp @e[type=marker,tag=torch_trace,tag=!found] ^ ^ ^4.5

execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ torch run function watching:events/torch_true
execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ wall_torch run function watching:events/torch_true

execute anchored eyes run tp @e[type=marker,tag=torch_trace,tag=!found] ^ ^ ^5

execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ torch run function watching:events/torch_true
execute as @e[type=marker,tag=torch_trace] at @s if block ~ ~ ~ wall_torch run function watching:events/torch_true


##replace
execute as @e[type=marker,tag=torch_trace,tag=!found] at @s run kill @s
execute as @e[type=marker,tag=torch_trace,tag=found,tag=!logged] at @s run function watching:events/sky_log