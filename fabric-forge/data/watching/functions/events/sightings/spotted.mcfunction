#debugMode
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=spread,distance=..2.2] run tellraw @a[tag=debugMode] ["",{"selector":"@s","color": "gray"},{"text":" spotted Herobrine at ","color": "gray"},{"nbt":"Pos","entity":"@e[type=armor_stand,tag=spread,limit=1]","color": "dark_gray"}]

#grantAdvancement
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=herobrineModel,distance=..2.2] if entity @s[advancements={watching:main/root=true}] run advancement grant @s only watching:main/spotted_herobrine
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=herobrineModel,distance=..2.2] if entity @s[advancements={watching:main/root=true}] if score hittingThatGriddyConfig ftf.configOptions matches 1 run advancement grant @s only watching:main/herobrine_griddy
#logPlayerViewingHerobrine
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=spread,distance=..2.2] run scoreboard players set true ftf.playerViewingHerobrine 1
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=spread,distance=..2.2] run schedule function watching:events/general/scoreboards/player_viewing_herobrine_reset 5t
#creepingSound
execute positioned ~ ~-0.1 ~ if predicate watching:chances/number/50 if entity @e[type=armor_stand,tag=spread,distance=..2.2] if entity @e[type=armor_stand,tag=move,distance=..2.2] if entity @e[type=armor_stand,tag=creeping,tag=!spottedByPlayer] run function watching:events/sounds/spotted
#removeHerobrine
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=creeping] if entity @e[type=armor_stand,tag=spread,distance=..2.2] unless entity @e[type=armor_stand,tag=spottedByPlayer] as @e[type=armor_stand,tag=move] at @s run function watching:events/sightings/spotted/creeping
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=stalking] if entity @e[type=armor_stand,tag=spread,distance=..2.2] unless entity @e[type=armor_stand,tag=spottedByPlayer] as @e[type=armor_stand,tag=move] at @s run function watching:events/sightings/spotted/stalking
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=lurking] if entity @e[type=armor_stand,tag=spread,distance=..2.2] unless entity @e[type=armor_stand,tag=spottedByPlayer] as @e[type=armor_stand,tag=move] at @s run function watching:events/sightings/spotted/lurking
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=spread,distance=..2.2] run tag @e[type=armor_stand,tag=spread] add spottedByPlayer
#checkIfHerobrineHasAppeared
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=spread,distance=..2.2] unless entity @e[type=armor_stand,tag=move] run function watching:events/general/kill/kill_spread_entity
#disappearWhenViewed
execute if score windowWatcherConfig ftf.configOptions matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ #watching:spotted/glass run tag @s add spottedThroughGlass
execute if entity @s[tag=spottedThroughGlass] positioned ^ ^ ^0.5 if block ~ ~ ~ #watching:glass_sight_blocks run function watching:events/sightings/spotted/glass_spotted/check_if_seen
#rayCast
execute if score windowWatcherConfig ftf.configOptions matches 0 positioned ^ ^ ^0.5 if block ~ ~ ~ #watching:glass_sight_blocks run function watching:events/sightings/spotted
execute if score windowWatcherConfig ftf.configOptions matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ #watching:sight_blocks run function watching:events/sightings/spotted