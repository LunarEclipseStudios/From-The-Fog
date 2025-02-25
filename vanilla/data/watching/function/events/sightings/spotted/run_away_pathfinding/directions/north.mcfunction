#moving
data modify entity @s Motion[2] set value -0.3d

#dodge
execute unless block ~ ~-.1 ~ #watching:air_blocks anchored eyes unless block ^ ^ ^2.2 #watching:air_blocks if block ^-1 ^ ^ #watching:air_blocks run data modify entity @s Motion[0] set value 0.11585d
execute unless block ~ ~-.1 ~ #watching:air_blocks anchored eyes unless block ^ ^ ^2.2 #watching:air_blocks if block ^1 ^ ^ #watching:air_blocks run data modify entity @s Motion[0] set value -0.11585d
execute unless block ~ ~-.1 ~ #watching:air_blocks anchored eyes unless block ^ ^ ^1.1 #watching:air_blocks if block ^-1 ^ ^ #watching:air_blocks run data modify entity @s Motion[0] set value 0.11585d
execute unless block ~ ~-.1 ~ #watching:air_blocks anchored eyes unless block ^ ^ ^1.1 #watching:air_blocks if block ^1 ^ ^ #watching:air_blocks run data modify entity @s Motion[0] set value -0.11585d

execute unless block ~ ~-.1 ~ #watching:air_blocks unless block ^ ^ ^1.2 #watching:air_blocks anchored eyes unless block ~ ~2 ~ #watching:air_blocks if block ^-1 ^ ^ #watching:air_blocks run data modify entity @s Motion[0] set value 0.11585d
execute unless block ~ ~-.1 ~ #watching:air_blocks unless block ^ ^ ^1.2 #watching:air_blocks anchored eyes unless block ~ ~2 ~ #watching:air_blocks if block ^1 ^ ^ #watching:air_blocks run data modify entity @s Motion[0] set value -0.11585d

#animationTriggers
execute unless entity @s[y_rotation=180] run tp @e[type=armor_stand,tag=herobrine,tag=!headRotation] ~ ~ ~ 180 ~

execute unless block ~ ~-.1 ~ #watching:air_blocks anchored eyes unless block ^ ^ ^2.2 #watching:air_blocks if block ^-1 ^ ^ #watching:air_blocks as @e[type=armor_stand,tag=secondaryRotate] run tp @s ~ ~ ~ ~25 ~
execute unless block ~ ~-.1 ~ #watching:air_blocks anchored eyes unless block ^ ^ ^2.2 #watching:air_blocks if block ^1 ^ ^ #watching:air_blocks as @e[type=armor_stand,tag=secondaryRotate] run tp @s ~ ~ ~ ~-25 ~
execute unless block ~ ~-.1 ~ #watching:air_blocks anchored eyes unless block ^ ^ ^1.2 #watching:air_blocks if block ^-1 ^ ^ #watching:air_blocks as @e[type=armor_stand,tag=secondaryRotate] run tp @s ~ ~ ~ ~25 ~
execute unless block ~ ~-.1 ~ #watching:air_blocks anchored eyes unless block ^ ^ ^1.2 #watching:air_blocks if block ^1 ^ ^ #watching:air_blocks as @e[type=armor_stand,tag=secondaryRotate] run tp @s ~ ~ ~ ~-25 ~