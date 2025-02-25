#revokeAdvancements
advancement revoke @s from watching:block_detection/torches/torch_root

#createRaycastMarker
execute anchored eyes run summon marker ^ ^ ^ {Tags:["torchTrace"],NoGravity:1b}

#findTorch
execute as @e[type=marker,tag=torchTrace] at @s if block ~ ~ ~ #watching:torches run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=torchTrace,tag=!found] ^ ^ ^.5 ~ ~
execute as @e[type=marker,tag=torchTrace] at @s if block ~ ~ ~ #watching:torches run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=torchTrace,tag=!found] ^ ^ ^1 ~ ~
execute as @e[type=marker,tag=torchTrace] at @s if block ~ ~ ~ #watching:torches run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=torchTrace,tag=!found] ^ ^ ^1.5 ~ ~
execute as @e[type=marker,tag=torchTrace] at @s if block ~ ~ ~ #watching:torches run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=torchTrace,tag=!found] ^ ^ ^2 ~ ~
execute as @e[type=marker,tag=torchTrace] at @s if block ~ ~ ~ #watching:torches run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=torchTrace,tag=!found] ^ ^ ^2.5 ~ ~
execute as @e[type=marker,tag=torchTrace] at @s if block ~ ~ ~ #watching:torches run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=torchTrace,tag=!found] ^ ^ ^3 ~ ~
execute as @e[type=marker,tag=torchTrace] at @s if block ~ ~ ~ #watching:torches run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=torchTrace,tag=!found] ^ ^ ^3.5 ~ ~
execute as @e[type=marker,tag=torchTrace] at @s if block ~ ~ ~ #watching:torches run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=torchTrace,tag=!found] ^ ^ ^4 ~ ~
execute as @e[type=marker,tag=torchTrace] at @s if block ~ ~ ~ #watching:torches run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=torchTrace,tag=!found] ^ ^ ^4.5 ~ ~
execute as @e[type=marker,tag=torchTrace] at @s if block ~ ~ ~ #watching:torches run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=torchTrace,tag=!found] ^ ^ ^5 ~ ~
execute as @e[type=marker,tag=torchTrace] at @s if block ~ ~ ~ #watching:torches run tag @s add found

#noTorch
execute as @e[type=marker,tag=torchTrace,tag=!found] at @s run kill @s

#foundTorch
execute as @e[type=marker,tag=torchTrace,tag=found,tag=!logged] at @s run tag @s add logged