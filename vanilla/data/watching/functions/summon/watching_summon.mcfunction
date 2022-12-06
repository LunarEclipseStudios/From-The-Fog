kill @e[tag=herobrine]

summon armor_stand ~ 0 ~ {Tags:["spread","model","watching","herobrine"],Marker:0b,Invisible:1b,Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583}
execute as @e[tag=spread] at @s run spreadplayers ~ ~ 25 27 false @s
execute as @e[tag=spread] at @s unless entity @a[distance=..40] run kill @s
execute as @e[tag=spread] at @s if entity @a[distance=..15] run kill @s

schedule function watching:summon/models/watching_summon 10t