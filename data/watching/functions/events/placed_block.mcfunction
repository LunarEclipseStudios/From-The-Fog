advancement revoke @s only watching:placed_block


##trace
execute anchored eyes run summon marker ^ ^ ^ {Tags:["bed_trace"],NoGravity:1b,Invisible:1b,Small:1b}

execute as @e[type=marker,tag=bed_trace] at @s if block ~ ~ ~ #minecraft:beds run function watching:events/bed_true
execute anchored eyes run tp @e[type=marker,tag=bed_trace,tag=!found] ^ ^ ^.5

execute as @e[type=marker,tag=bed_trace] at @s if block ~ ~ ~ #minecraft:beds run function watching:events/bed_true
execute anchored eyes run tp @e[type=marker,tag=bed_trace,tag=!found] ^ ^ ^1

execute as @e[type=marker,tag=bed_trace] at @s if block ~ ~ ~ #minecraft:beds run function watching:events/bed_true
execute anchored eyes run tp @e[type=marker,tag=bed_trace,tag=!found] ^ ^ ^1.5

execute as @e[type=marker,tag=bed_trace] at @s if block ~ ~ ~ #minecraft:beds run function watching:events/bed_true
execute anchored eyes run tp @e[type=marker,tag=bed_trace,tag=!found] ^ ^ ^2

execute as @e[type=marker,tag=bed_trace] at @s if block ~ ~ ~ #minecraft:beds run function watching:events/bed_true
execute anchored eyes run tp @e[type=marker,tag=bed_trace,tag=!found] ^ ^ ^2.5

execute as @e[type=marker,tag=bed_trace] at @s if block ~ ~ ~ #minecraft:beds run function watching:events/bed_true
execute anchored eyes run tp @e[type=marker,tag=bed_trace,tag=!found] ^ ^ ^3

execute as @e[type=marker,tag=bed_trace] at @s if block ~ ~ ~ #minecraft:beds run function watching:events/bed_true
execute anchored eyes run tp @e[type=marker,tag=bed_trace,tag=!found] ^ ^ ^3.5

execute as @e[type=marker,tag=bed_trace] at @s if block ~ ~ ~ #minecraft:beds run function watching:events/bed_true
execute anchored eyes run tp @e[type=marker,tag=bed_trace,tag=!found] ^ ^ ^4

execute as @e[type=marker,tag=bed_trace] at @s if block ~ ~ ~ #minecraft:beds run function watching:events/bed_true
execute anchored eyes run tp @e[type=marker,tag=bed_trace,tag=!found] ^ ^ ^4.5

execute as @e[type=marker,tag=bed_trace] at @s if block ~ ~ ~ #minecraft:beds run function watching:events/bed_true
execute anchored eyes run tp @e[type=marker,tag=bed_trace,tag=!found] ^ ^ ^5

execute as @e[type=marker,tag=bed_trace] at @s if block ~ ~ ~ #minecraft:beds run function watching:events/bed_true


##replace
execute as @e[type=marker,tag=bed_trace,tag=found] at @s unless block ~ ~-1 ~ #planks run kill @s
execute as @e[type=marker,tag=bed_trace,tag=!found] at @s run kill @s
execute as @e[type=marker,tag=bed_trace,tag=found,tag=!logged] at @s run function watching:events/sky_log