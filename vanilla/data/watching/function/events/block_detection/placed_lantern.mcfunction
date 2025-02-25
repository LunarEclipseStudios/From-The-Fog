#revokeAdvancements
advancement revoke @s from watching:block_detection/lantern

#createRaycastMarker
execute anchored eyes run summon marker ^ ^ ^ {Tags:["lanternTrace"],NoGravity:1b}

#findTorch
execute as @e[type=marker,tag=lanternTrace] at @s if block ~ ~ ~ minecraft:lantern run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=lanternTrace,tag=!found] ^ ^ ^.5 ~ ~
execute as @e[type=marker,tag=lanternTrace] at @s if block ~ ~ ~ minecraft:lantern run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=lanternTrace,tag=!found] ^ ^ ^1 ~ ~
execute as @e[type=marker,tag=lanternTrace] at @s if block ~ ~ ~ minecraft:lantern run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=lanternTrace,tag=!found] ^ ^ ^1.5 ~ ~
execute as @e[type=marker,tag=lanternTrace] at @s if block ~ ~ ~ minecraft:lantern run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=lanternTrace,tag=!found] ^ ^ ^2 ~ ~
execute as @e[type=marker,tag=lanternTrace] at @s if block ~ ~ ~ minecraft:lantern run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=lanternTrace,tag=!found] ^ ^ ^2.5 ~ ~
execute as @e[type=marker,tag=lanternTrace] at @s if block ~ ~ ~ minecraft:lantern run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=lanternTrace,tag=!found] ^ ^ ^3 ~ ~
execute as @e[type=marker,tag=lanternTrace] at @s if block ~ ~ ~ minecraft:lantern run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=lanternTrace,tag=!found] ^ ^ ^3.5 ~ ~
execute as @e[type=marker,tag=lanternTrace] at @s if block ~ ~ ~ minecraft:lantern run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=lanternTrace,tag=!found] ^ ^ ^4 ~ ~
execute as @e[type=marker,tag=lanternTrace] at @s if block ~ ~ ~ minecraft:lantern run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=lanternTrace,tag=!found] ^ ^ ^4.5 ~ ~
execute as @e[type=marker,tag=lanternTrace] at @s if block ~ ~ ~ minecraft:lantern run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=lanternTrace,tag=!found] ^ ^ ^5 ~ ~
execute as @e[type=marker,tag=lanternTrace] at @s if block ~ ~ ~ minecraft:lantern run tag @s add found

#noTorch
execute as @e[type=marker,tag=lanternTrace,tag=!found] at @s run kill @s

#foundTorch
execute as @e[type=marker,tag=lanternTrace,tag=found,tag=!logged] at @s run tag @s add logged