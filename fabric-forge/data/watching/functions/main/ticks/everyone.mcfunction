#spottedCreeping
execute if entity @e[type=armor_stand,tag=creeping,distance=..60] unless entity @e[type=armor_stand,tag=spottedByPlayer] unless entity @s[gamemode=spectator] unless score @s crash matches 1.. anchored eyes facing entity @e[type=armor_stand,sort=nearest,limit=1,tag=spread] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.85] anchored eyes facing entity @e[type=armor_stand,sort=nearest,limit=1,tag=spread] eyes positioned ^ ^ ^ run function watching:events/sightings/spotted
#spottedStalking
execute if entity @e[type=armor_stand,tag=stalking,distance=..80] unless entity @e[type=armor_stand,tag=spottedByPlayer] unless entity @s[gamemode=spectator] anchored eyes facing entity @e[type=armor_stand,sort=nearest,limit=1,tag=spread] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.75] at @s anchored eyes facing entity @e[type=armor_stand,sort=nearest,limit=1,tag=spread] eyes positioned ^ ^ ^ run function watching:events/sightings/spotted

#crash/jumpscare
execute if score @s crash matches 1 unless entity @e[type=armor_stand,tag=spread,distance=..1.5] run scoreboard players reset @s crash
execute as @s[scores={crash=1..}] at @s run function watching:events/sightings/jumpscare_crash
execute as @s[gamemode=!spectator] at @s unless score @s crash matches 1.. if entity @e[type=armor_stand,tag=spread,distance=..1.5] run scoreboard players add @s crash 1

#footsteps
execute if score true startedEvents matches 1 unless entity @e[type=marker,tag=footstepsEmitter] unless entity @e[type=armor_stand,tag=spread] unless entity @e[type=villager,tag=door_open] if block ~ ~-1 ~ #watching:footsteps_blocks if predicate watching:chances/footsteps_chance run function watching:events/sounds/footsteps