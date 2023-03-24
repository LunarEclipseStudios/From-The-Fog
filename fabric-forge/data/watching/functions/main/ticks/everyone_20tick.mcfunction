#footsteps
execute if score true startedEvents matches 1 unless entity @e[type=marker,tag=footstepsEmitter] unless entity @e[type=armor_stand,tag=spread] unless entity @e[type=villager,tag=door_open] if block ~ ~-1 ~ #watching:footsteps_blocks if predicate watching:chances/footsteps_chance run function watching:events/sounds/footsteps

#removeSpottedThroughGlassTag
execute if entity @s[tag=spottedThroughGlass] run tag @s remove spottedThroughGlass