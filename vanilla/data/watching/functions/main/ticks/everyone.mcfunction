#spottedCreeping
execute if entity @e[type=armor_stand,tag=creeping,distance=..60] unless entity @s[gamemode=spectator] unless score @s ftf.crash matches 1.. anchored eyes facing entity @e[type=armor_stand,sort=nearest,limit=1,tag=spread] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.85] anchored eyes facing entity @e[type=armor_stand,sort=nearest,limit=1,tag=spread] eyes positioned ^ ^ ^ run function watching:events/sightings/spotted
#spottedStalking
execute if entity @e[type=armor_stand,tag=stalking,distance=..80] unless entity @s[gamemode=spectator] anchored eyes facing entity @e[type=armor_stand,sort=nearest,limit=1,tag=spread] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.77] at @s anchored eyes facing entity @e[type=armor_stand,sort=nearest,limit=1,tag=spread] eyes positioned ^ ^ ^ run function watching:events/sightings/spotted
#crash/jumpscare
execute if score @s ftf.crash matches 1 unless entity @e[type=armor_stand,tag=spread,distance=..1.5] run scoreboard players reset @s ftf.crash
execute if score @s ftf.crash matches 1.. run function watching:events/sightings/jumpscare_crash
execute as @s[gamemode=!spectator] at @s unless score @s ftf.crash matches 1.. if entity @e[type=armor_stand,tag=spread,tag=creeping,distance=..1.5] if entity @e[type=armor_stand,tag=herobrineModel,distance=..5] run scoreboard players add @s ftf.crash 1

#placeNewChestMarker
execute if score @s ftf.openedChest matches 1.. run function watching:events/block_detection/placed_chest

#nightmareMechanic
execute if entity @s[tag=nightmarePlayer] unless block ~ ~ ~ #minecraft:beds[occupied=true] run function watching:events/general/kill/kill_nightmare_entity
execute if entity @s[tag=nightmarePlayer] unless entity @e[type=armor_stand,tag=nightmare] run function watching:events/general/kill/kill_nightmare_entity
