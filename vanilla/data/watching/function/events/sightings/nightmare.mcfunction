#removeOtherHerobrines
execute as @e[tag=herobrine] at @s run function watching:events/general/kill/kill

#logSleepingPlayer
tag @s add nightmarePlayer

#effects
effect give @s darkness 30 1 true

#summon
execute if block ~ ~ ~ #beds[facing=west] run summon armor_stand ~2 ~ ~ {Tags:["spread","model","herobrine","nightmare","creeping","facingWest","herobrineEntity"],Marker:0b,Invisible:1b,Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583,NoBasePlate:1b}
execute if block ~ ~ ~ #beds[facing=east] run summon armor_stand ~-2 ~ ~ {Tags:["spread","model","herobrine","nightmare","creeping","facingEast","herobrineEntity"],Marker:0b,Invisible:1b,Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583,NoBasePlate:1b}
execute if block ~ ~ ~ #beds[facing=south] run summon armor_stand ~ ~ ~-2 {Tags:["spread","model","herobrine","nightmare","creeping","facingSouth","herobrineEntity"],Marker:0b,Invisible:1b,Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583,NoBasePlate:1b}
execute if block ~ ~ ~ #beds[facing=north] run summon armor_stand ~ ~ ~2 {Tags:["spread","model","herobrine","nightmare","creeping","facingNorth","herobrineEntity"],Marker:0b,Invisible:1b,Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583,NoBasePlate:1b}

#createModel
schedule function watching:events/sightings/setup/models 1t

#debugMode
tellraw @a[tag=debugMode] ["",{"text":"Attempted to spawn a nightmare Herobrine on ","color": "green"},{"selector":"@s","color": "green"},{"text":" at ","color": "green"},{"nbt":"Pos","entity":"@e[type=armor_stand,tag=spread]","color": "dark_green"}]

#grantAdvancement
execute if entity @s[advancements={watching:main/root=true,watching:main/have_a_nightmare=false}] if block ~ ~ ~ #beds run advancement grant @s only watching:main/have_a_nightmare