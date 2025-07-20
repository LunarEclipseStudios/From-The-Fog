#revokeAdvancements
advancement revoke @s from watching:block_detection/candles/candle_root

#createRaycastMarker
execute anchored eyes run summon marker ^ ^ ^ {Tags:["candleTrace"],NoGravity:1b}

#findCandle
execute as @e[type=marker,tag=candleTrace] at @s if block ~ ~ ~ #minecraft:candles run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=candleTrace,tag=!found] ^ ^ ^.5 ~ ~
execute as @e[type=marker,tag=candleTrace] at @s if block ~ ~ ~ #minecraft:candles run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=candleTrace,tag=!found] ^ ^ ^1 ~ ~
execute as @e[type=marker,tag=candleTrace] at @s if block ~ ~ ~ #minecraft:candles run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=candleTrace,tag=!found] ^ ^ ^1.5 ~ ~
execute as @e[type=marker,tag=candleTrace] at @s if block ~ ~ ~ #minecraft:candles run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=candleTrace,tag=!found] ^ ^ ^2 ~ ~
execute as @e[type=marker,tag=candleTrace] at @s if block ~ ~ ~ #minecraft:candles run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=candleTrace,tag=!found] ^ ^ ^2.5 ~ ~
execute as @e[type=marker,tag=candleTrace] at @s if block ~ ~ ~ #minecraft:candles run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=candleTrace,tag=!found] ^ ^ ^3 ~ ~
execute as @e[type=marker,tag=candleTrace] at @s if block ~ ~ ~ #minecraft:candles run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=candleTrace,tag=!found] ^ ^ ^3.5 ~ ~
execute as @e[type=marker,tag=candleTrace] at @s if block ~ ~ ~ #minecraft:candles run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=candleTrace,tag=!found] ^ ^ ^4 ~ ~
execute as @e[type=marker,tag=candleTrace] at @s if block ~ ~ ~ #minecraft:candles run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=candleTrace,tag=!found] ^ ^ ^4.5 ~ ~
execute as @e[type=marker,tag=candleTrace] at @s if block ~ ~ ~ #minecraft:candles run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=candleTrace,tag=!found] ^ ^ ^5 ~ ~
execute as @e[type=marker,tag=candleTrace] at @s if block ~ ~ ~ #minecraft:candles run tag @s add found

#noCandle
execute as @e[type=marker,tag=candleTrace,tag=!found] at @s run kill @s

#foundCandle
execute as @e[type=marker,tag=candleTrace,tag=found,tag=!logged] at @s if entity @e[type=marker,tag=candleTrace,tag=logged,distance=..1] run kill @s
execute as @e[type=marker,tag=candleTrace,tag=found,tag=!logged] at @s run tag @s add logged