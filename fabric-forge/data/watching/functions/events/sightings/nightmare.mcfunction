#removeOtherHerobrines
execute as @e[tag=herobrine] at @s run function watching:events/general/kill/kill

#logSleepingPlayer
tag @s add nightmarePlayer

#effects
effect give @s darkness 30 1 true

#summon
execute if block ~ ~ ~ #beds[facing=west] run summon armor_stand ~2 ~ ~ {Tags:["spread","model","herobrine","nightmare","creeping","facingWest"],Marker:0b,Invisible:1b,Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583,NoBasePlate:1b}
execute if block ~ ~ ~ #beds[facing=east] run summon armor_stand ~-2 ~ ~ {Tags:["spread","model","herobrine","nightmare","creeping","facingEast"],Marker:0b,Invisible:1b,Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583,NoBasePlate:1b}
execute if block ~ ~ ~ #beds[facing=south] run summon armor_stand ~ ~ ~-2 {Tags:["spread","model","herobrine","nightmare","creeping","facingSouth"],Marker:0b,Invisible:1b,Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583,NoBasePlate:1b}
execute if block ~ ~ ~ #beds[facing=north] run summon armor_stand ~ ~ ~2 {Tags:["spread","model","herobrine","nightmare","creeping","facingNorth"],Marker:0b,Invisible:1b,Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583,NoBasePlate:1b}

#createModel
schedule function watching:events/sightings/setup/models 1t