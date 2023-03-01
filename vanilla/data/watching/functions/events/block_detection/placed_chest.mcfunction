#revokeAdvancements
advancement revoke @s from watching:block_detection/chest

#createRaycastMarker
execute anchored eyes run summon marker ^ ^ ^ {Tags:["chestTrace"],NoGravity:1b}

#findBed
execute as @e[type=marker,tag=chestTrace] at @s if block ~ ~ ~ minecraft:chest run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=chestTrace,tag=!found] ^ ^ ^.5 ~ ~
execute as @e[type=marker,tag=chestTrace] at @s if block ~ ~ ~ minecraft:chest run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=chestTrace,tag=!found] ^ ^ ^1 ~ ~
execute as @e[type=marker,tag=chestTrace] at @s if block ~ ~ ~ minecraft:chest run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=chestTrace,tag=!found] ^ ^ ^1.5 ~ ~
execute as @e[type=marker,tag=chestTrace] at @s if block ~ ~ ~ minecraft:chest run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=chestTrace,tag=!found] ^ ^ ^2 ~ ~
execute as @e[type=marker,tag=chestTrace] at @s if block ~ ~ ~ minecraft:chest run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=chestTrace,tag=!found] ^ ^ ^2.5 ~ ~
execute as @e[type=marker,tag=chestTrace] at @s if block ~ ~ ~ minecraft:chest run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=chestTrace,tag=!found] ^ ^ ^3 ~ ~
execute as @e[type=marker,tag=chestTrace] at @s if block ~ ~ ~ minecraft:chest run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=chestTrace,tag=!found] ^ ^ ^3.5 ~ ~
execute as @e[type=marker,tag=chestTrace] at @s if block ~ ~ ~ minecraft:chest run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=chestTrace,tag=!found] ^ ^ ^4 ~ ~
execute as @e[type=marker,tag=chestTrace] at @s if block ~ ~ ~ minecraft:chest run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=chestTrace,tag=!found] ^ ^ ^4.5 ~ ~
execute as @e[type=marker,tag=chestTrace] at @s if block ~ ~ ~ minecraft:chest run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=chestTrace,tag=!found] ^ ^ ^5 ~ ~
execute as @e[type=marker,tag=chestTrace] at @s if block ~ ~ ~ minecraft:chest run tag @s add found

#noBed
execute as @e[type=marker,tag=chestTrace,tag=!found] at @s run kill @s

#foundBed
execute as @e[type=marker,tag=chestTrace,tag=found,tag=!logged] at @s run tag @s add logged