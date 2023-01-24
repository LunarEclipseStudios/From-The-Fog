#revokeAdvancements
advancement revoke @s from watching:block_detection/beds/bed_root

#createRaycastMarker
execute anchored eyes run summon marker ^ ^ ^ {Tags:["bedTrace"],NoGravity:1b}

#findBed
execute as @e[type=marker,tag=bedTrace] at @s if block ~ ~ ~ #minecraft:beds run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=bedTrace,tag=!found] ^ ^ ^.5 ~ ~
execute as @e[type=marker,tag=bedTrace] at @s if block ~ ~ ~ #minecraft:beds run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=bedTrace,tag=!found] ^ ^ ^1 ~ ~
execute as @e[type=marker,tag=bedTrace] at @s if block ~ ~ ~ #minecraft:beds run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=bedTrace,tag=!found] ^ ^ ^1.5 ~ ~
execute as @e[type=marker,tag=bedTrace] at @s if block ~ ~ ~ #minecraft:beds run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=bedTrace,tag=!found] ^ ^ ^2 ~ ~
execute as @e[type=marker,tag=bedTrace] at @s if block ~ ~ ~ #minecraft:beds run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=bedTrace,tag=!found] ^ ^ ^2.5 ~ ~
execute as @e[type=marker,tag=bedTrace] at @s if block ~ ~ ~ #minecraft:beds run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=bedTrace,tag=!found] ^ ^ ^3 ~ ~
execute as @e[type=marker,tag=bedTrace] at @s if block ~ ~ ~ #minecraft:beds run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=bedTrace,tag=!found] ^ ^ ^3.5 ~ ~
execute as @e[type=marker,tag=bedTrace] at @s if block ~ ~ ~ #minecraft:beds run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=bedTrace,tag=!found] ^ ^ ^4 ~ ~
execute as @e[type=marker,tag=bedTrace] at @s if block ~ ~ ~ #minecraft:beds run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=bedTrace,tag=!found] ^ ^ ^4.5 ~ ~
execute as @e[type=marker,tag=bedTrace] at @s if block ~ ~ ~ #minecraft:beds run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=bedTrace,tag=!found] ^ ^ ^5 ~ ~
execute as @e[type=marker,tag=bedTrace] at @s if block ~ ~ ~ #minecraft:beds run tag @s add found

#noBed
execute as @e[type=marker,tag=bedTrace,tag=!found] at @s run kill @s

#foundBed
execute as @e[type=marker,tag=bedTrace,tag=found,tag=!logged] at @s run tag @s add logged