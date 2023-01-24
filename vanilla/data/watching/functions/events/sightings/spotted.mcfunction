#creepingSound
execute if entity @e[type=armor_stand,tag=creeping] run function watching:events/sounds/spotted
#removeHerobrine
kill @e[tag=spread]
#doubleCheck
execute positioned ^ ^ ^0.5 if block ~ ~ ~ #watching:sight_blocks run function watching:events/sightings/spotted