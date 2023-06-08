#removeOtherHerobrines
execute as @e[type=armor_stand,tag=herobrine] at @s run function watching:events/general/kill/kill

#summon
summon armor_stand ~ 0 ~ {Tags:["spread","model","lurking","herobrine","smithed.entity","smithed.strict","herobrineEntity"],Marker:0b,Invisible:1b,Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583,NoBasePlate:1b}

#stalkingPos
execute as @e[type=armor_stand,tag=spread] at @s run spreadplayers ~ ~ 70 100 false @s
execute as @e[type=armor_stand,tag=spread] at @s align xz run tp ~0.5 ~ ~0.5

#tooFarOrCloseKill
execute as @e[type=armor_stand,tag=spread] at @s unless entity @a[distance=..128] run kill @s
execute as @e[type=armor_stand,tag=spread] at @s if entity @a[distance=..40] run kill @s

#createModel
schedule function watching:events/sightings/setup/models 5t

#debugMode
tellraw @a[tag=debugMode] ["",{"text":"Attempted to spawn a lurking Herobrine on ","color": "green"},{"selector":"@s","color": "green"},{"text":" at ","color": "green"},{"nbt":"Pos","entity":"@e[type=armor_stand,tag=spread]","color": "dark_green"}]
