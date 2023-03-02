#revokeAdvancement
advancement revoke @s only watching:events/sleep

#nightmareMechanic
execute if score true nightmareMechanicConfig matches 1 if score chance sightingChanceConfig matches 1 if score true startedEvents matches 1 if predicate watching:chances/sighting_chances/common_sighting_chance_night unless entity @e[type=armor_stand,tag=nightmare] unless entity @e[type=villager,tag=door_open] run function watching:events/sightings/nightmare
execute if score true nightmareMechanicConfig matches 1 if score chance sightingChanceConfig matches 2 if score true startedEvents matches 1 if predicate watching:chances/sighting_chances/uncommon_sighting_chance_night unless entity @e[type=armor_stand,tag=nightmare] unless entity @e[type=villager,tag=door_open] run function watching:events/sightings/nightmare
execute if score true nightmareMechanicConfig matches 1 if score chance sightingChanceConfig matches 3 if score true startedEvents matches 1 if predicate watching:chances/sighting_chances/rare_sighting_chance_night unless entity @e[type=armor_stand,tag=nightmare] unless entity @e[type=villager,tag=door_open] run function watching:events/sightings/nightmare