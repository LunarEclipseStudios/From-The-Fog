scoreboard players reset @s torch_placed
tag @s add torch_placed

##trace
summon armor_stand ^ ^ ^ {Tags:["torch_trace"],NoGravity:1b,Invisible:1b,Small:1b}

execute as @e[tag=torch_trace] at @s if block ~ ~ ~ torch run function watching:events/torch_true
execute as @e[tag=torch_trace] at @s if block ~ ~ ~ wall_torch run function watching:events/torch_true
execute as @a[tag=torch_placed] at @s run tp @e[tag=torch_trace,tag=!found] ^ ^1.65 ^1
execute as @e[tag=torch_trace] at @s if block ~ ~ ~ torch run function watching:events/torch_true
execute as @e[tag=torch_trace] at @s if block ~ ~ ~ wall_torch run function watching:events/torch_true
execute as @a[tag=torch_placed] at @s run tp @e[tag=torch_trace,tag=!found] ^ ^1.65 ^2
execute as @e[tag=torch_trace] at @s if block ~ ~ ~ torch run function watching:events/torch_true
execute as @e[tag=torch_trace] at @s if block ~ ~ ~ wall_torch run function watching:events/torch_true
execute as @a[tag=torch_placed] at @s run tp @e[tag=torch_trace,tag=!found] ^ ^1.65 ^3
execute as @e[tag=torch_trace] at @s if block ~ ~ ~ torch run function watching:events/torch_true
execute as @e[tag=torch_trace] at @s if block ~ ~ ~ wall_torch run function watching:events/torch_true
execute as @a[tag=torch_placed] at @s run tp @e[tag=torch_trace,tag=!found] ^ ^1.65 ^4
execute as @e[tag=torch_trace] at @s if block ~ ~ ~ torch run function watching:events/torch_true
execute as @e[tag=torch_trace] at @s if block ~ ~ ~ wall_torch run function watching:events/torch_true
execute as @a[tag=torch_placed] at @s run tp @e[tag=torch_trace,tag=!found] ^ ^1.65 ^5
execute as @e[tag=torch_trace] at @s if block ~ ~ ~ torch run function watching:events/torch_true
execute as @e[tag=torch_trace] at @s if block ~ ~ ~ wall_torch run function watching:events/torch_true

##replace
execute as @e[tag=torch_trace,tag=!found] at @s run kill @s
execute as @e[tag=torch_trace,tag=found,tag=!logged] at @s run function watching:events/sky_log