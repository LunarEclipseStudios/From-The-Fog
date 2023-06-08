#removeOtherHerobrines
execute as @e[type=armor_stand,tag=herobrine] at @s run function watching:events/general/kill/kill

#summon
summon armor_stand ~ 0 ~ {Tags:["spread","model","herobrine","creeping","smithed.entity","smithed.strict","herobrineEntity"],Marker:0b,Invisible:1b,Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583,NoBasePlate:1b}

#creepingPos
tp @e[type=armor_stand,tag=herobrine] ^ ^ ^-5 facing entity @s
execute if score random ftf.creepingPosRandomizer matches 1 as @e[type=armor_stand,tag=herobrine] at @s run tp ^ ^ ^
execute if score random ftf.creepingPosRandomizer matches 2 as @e[type=armor_stand,tag=herobrine] at @s run tp ^2 ^ ^
execute if score random ftf.creepingPosRandomizer matches 3 as @e[type=armor_stand,tag=herobrine] at @s run tp ^-2 ^ ^
execute as @e[type=armor_stand,tag=herobrine] at @s run tp ~ ~7 ~
execute as @e[type=armor_stand,tag=herobrine] at @s align xz run tp ~0.5 ~ ~0.5

#tooFarKill
execute as @e[type=armor_stand,tag=spread] at @s unless entity @a[distance=0.1..16] run kill @s

#createModel
schedule function watching:events/sightings/setup/models 5t

#debugMode
tellraw @a[tag=debugMode] ["",{"text":"Attempted to spawn a creeping Herobrine on ","color": "green"},{"selector":"@s","color": "green"},{"text":" at ","color": "green"},{"nbt":"Pos","entity":"@e[type=armor_stand,tag=spread]","color": "dark_green"}]
