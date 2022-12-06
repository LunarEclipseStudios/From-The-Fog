kill @e[tag=herobrine]

##summon
summon armor_stand ~ 0 ~ {Tags:["spread","model","herobrine"],Marker:0b,Invisible:1b,Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583}

execute positioned ~ ~1 ~ run function watching:summon/height_check

execute as @e[tag=spread] in minecraft:the_nether if entity @e[tag=spread,distance=0..] run tag @s add above

execute if entity @e[tag=spread,tag=above] run function watching:summon/spread_above
execute if entity @e[tag=spread,tag=!above] run function watching:summon/spread_below

execute as @e[tag=spread] run data merge entity @s {NoGravity:1b}

execute as @e[tag=spread,tag=above] at @s unless entity @a[distance=0.1..32] run kill @s
execute as @e[tag=spread,tag=!above] at @s unless entity @a[distance=0.1..16] run kill @s

schedule function watching:summon/models/summon 10t