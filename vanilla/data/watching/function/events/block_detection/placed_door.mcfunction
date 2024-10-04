#revokeAdvancements
advancement revoke @s from watching:block_detection/doors/door_root

#createRaycastMarker
execute anchored eyes run summon marker ^ ^ ^ {Tags:["doorTrace"],NoGravity:1b}

#findDoor
execute as @e[type=marker,tag=doorTrace] at @s if block ~ ~ ~ #minecraft:doors run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=doorTrace,tag=!found] ^ ^ ^.5 ~ ~
execute as @e[type=marker,tag=doorTrace] at @s if block ~ ~ ~ #minecraft:doors run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=doorTrace,tag=!found] ^ ^ ^1 ~ ~
execute as @e[type=marker,tag=doorTrace] at @s if block ~ ~ ~ #minecraft:doors run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=doorTrace,tag=!found] ^ ^ ^1.5 ~ ~
execute as @e[type=marker,tag=doorTrace] at @s if block ~ ~ ~ #minecraft:doors run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=doorTrace,tag=!found] ^ ^ ^2 ~ ~
execute as @e[type=marker,tag=doorTrace] at @s if block ~ ~ ~ #minecraft:doors run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=doorTrace,tag=!found] ^ ^ ^2.5 ~ ~
execute as @e[type=marker,tag=doorTrace] at @s if block ~ ~ ~ #minecraft:doors run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=doorTrace,tag=!found] ^ ^ ^3 ~ ~
execute as @e[type=marker,tag=doorTrace] at @s if block ~ ~ ~ #minecraft:doors run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=doorTrace,tag=!found] ^ ^ ^3.5 ~ ~
execute as @e[type=marker,tag=doorTrace] at @s if block ~ ~ ~ #minecraft:doors run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=doorTrace,tag=!found] ^ ^ ^4 ~ ~
execute as @e[type=marker,tag=doorTrace] at @s if block ~ ~ ~ #minecraft:doors run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=doorTrace,tag=!found] ^ ^ ^4.5 ~ ~
execute as @e[type=marker,tag=doorTrace] at @s if block ~ ~ ~ #minecraft:doors run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=doorTrace,tag=!found] ^ ^ ^5 ~ ~
execute as @e[type=marker,tag=doorTrace] at @s if block ~ ~ ~ #minecraft:doors run tag @s add found

#noDoor
execute as @e[type=marker,tag=doorTrace,tag=!found] at @s run kill @s

#foundDoor
execute as @e[type=marker,tag=doorTrace,tag=found,tag=!logged] at @s run tag @s add logged