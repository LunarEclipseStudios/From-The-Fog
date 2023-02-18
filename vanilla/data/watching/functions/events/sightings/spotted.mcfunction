#creepingSound
execute if entity @e[type=armor_stand,tag=creeping,tag=!spottedByPlayer] run function watching:events/sounds/spotted
#removeHerobrine
tag @e[type=armor_stand,tag=spread] add spottedByPlayer
execute if entity @e[type=armor_stand,tag=creeping] run function watching:events/sightings/spotted/creeping
execute if entity @e[type=armor_stand,tag=stalking] run function watching:events/sightings/spotted/stalking
#doubleCheck
execute positioned ^ ^ ^0.5 if block ~ ~ ~ #watching:sight_blocks run function watching:events/sightings/spotted

