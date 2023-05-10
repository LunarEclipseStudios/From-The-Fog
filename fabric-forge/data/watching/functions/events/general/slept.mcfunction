#revokeAdvancement
advancement revoke @s only watching:events/sleep

#nightmareMechanic
execute if score nightmareMechanicConfig ftf.configOptions matches 1 if score sightingChanceConfig ftf.configOptions matches 1 if score true ftf.startedEvents matches 1 if predicate watching:chances/sighting_chances/common_sighting_chance_night unless entity @e[tag=herobrineEntity] run function watching:events/sightings/nightmare
execute if score nightmareMechanicConfig ftf.configOptions matches 1 if score sightingChanceConfig ftf.configOptions matches 2 if score true ftf.startedEvents matches 1 if predicate watching:chances/sighting_chances/uncommon_sighting_chance_night unless entity @e[tag=herobrineEntity] run function watching:events/sightings/nightmare
execute if score nightmareMechanicConfig ftf.configOptions matches 1 if score sightingChanceConfig ftf.configOptions matches 3 if score true ftf.startedEvents matches 1 if predicate watching:chances/sighting_chances/rare_sighting_chance_night unless entity @e[tag=herobrineEntity] run function watching:events/sightings/nightmare