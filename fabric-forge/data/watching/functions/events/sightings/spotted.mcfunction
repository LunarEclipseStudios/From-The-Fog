#logPlayerViewingHerobrine
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=spread,distance=..2.2] run scoreboard players set true playerViewingHerobrine 1
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=spread,distance=..2.2] run schedule function watching:events/general/scoreboards/player_viewing_herobrine_reset 5t
#creepingSound
execute positioned ~ ~-0.1 ~ if predicate watching:chances/number/50 if entity @e[type=armor_stand,tag=spread,distance=..2.2] if entity @e[type=armor_stand,tag=move,distance=..2.2] if entity @e[type=armor_stand,tag=creeping,tag=!spottedByPlayer] run function watching:events/sounds/spotted
#removeHerobrine
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=creeping] if entity @e[type=armor_stand,tag=spread,distance=..2.2] unless entity @e[type=armor_stand,tag=spottedByPlayer] as @e[type=armor_stand,tag=move] at @s run function watching:events/sightings/spotted/creeping
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=stalking] if entity @e[type=armor_stand,tag=spread,distance=..2.2] unless entity @e[type=armor_stand,tag=spottedByPlayer] as @e[type=armor_stand,tag=move] at @s run function watching:events/sightings/spotted/stalking
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=spread,distance=..2.2] run tag @e[type=armor_stand,tag=spread] add spottedByPlayer
#checkIfHerobrineHasAppeared
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=spread,distance=..2.2] unless entity @e[type=armor_stand,tag=move] run function watching:events/general/kill/kill_spread_entity
#disappearWhenViewed
execute if score true windowWatcherConfig matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ #watching:spotted/glass run tag @e[type=armor_stand,tag=move] add glassSpotted
execute if score true windowWatcherConfig matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ #watching:spotted/glass run tag @s add spottedThroughGlass
#rayCast
execute if score true windowWatcherConfig matches 0 positioned ^ ^ ^0.5 if block ~ ~ ~ #watching:glass_sight_blocks run function watching:events/sightings/spotted
execute if score true windowWatcherConfig matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ #watching:sight_blocks run function watching:events/sightings/spotted