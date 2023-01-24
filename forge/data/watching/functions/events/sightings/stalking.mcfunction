#removeOtherHerobrines
execute as @e[tag=herobrine] at @s run function watching:events/general/kill/kill

#summon
summon armor_stand ~ 0 ~ {Tags:["spread","model","stalking","herobrine"],Marker:0b,Invisible:1b,Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583,NoBasePlate:1b}

#stalkingPos
execute as @e[tag=spread] at @s run spreadplayers ~ ~ 25 27 false @s

#tooFarOrCloseKill
execute as @e[tag=spread] at @s unless entity @a[distance=..40] run kill @s
execute as @e[tag=spread] at @s if entity @a[distance=..15] run kill @s

#createModel
schedule function watching:events/sightings/setup/models 1s