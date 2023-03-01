#creepingSound
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=spread,distance=..2.2] if entity @e[type=armor_stand,tag=creeping,tag=!spottedByPlayer] run function watching:events/sounds/spotted
#removeHerobrine
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=spread,distance=..2.2] run tag @e[type=armor_stand,tag=spread] add spottedByPlayer
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=creeping] if entity @e[type=armor_stand,tag=spread,distance=..2.2] run function watching:events/sightings/spotted/creeping
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=stalking] if entity @e[type=armor_stand,tag=spread,distance=..2.2] run function watching:events/sightings/spotted/stalking
#checkIfHerobrineHasAppeared
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=spread,distance=..2.2] unless entity @e[type=armor_stand,tag=move] run function watching:events/general/kill/kill_spread_entity
#doubleCheck
execute positioned ^ ^ ^0.5 if block ~ ~ ~ #watching:sight_blocks run function watching:events/sightings/spotted
