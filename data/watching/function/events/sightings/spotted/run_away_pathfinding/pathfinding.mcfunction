#jump
execute unless block ^ ^.2 ^2.2 #watching:air_blocks unless block ~ ~-.1 ~ #watching:air_blocks run data modify entity @s Motion[1] set value 0.45d
execute unless block ^ ^.2 ^1.2 #watching:air_blocks unless block ~ ~-.1 ~ #watching:air_blocks run data modify entity @s Motion[1] set value 0.45d

#moving
execute if score @s ftf.facingDirection matches 1 run function watching:events/sightings/spotted/run_away_pathfinding/directions/south
execute if score @s ftf.facingDirection matches 2 run function watching:events/sightings/spotted/run_away_pathfinding/directions/west
execute if score @s ftf.facingDirection matches 3 run function watching:events/sightings/spotted/run_away_pathfinding/directions/north
execute if score @s ftf.facingDirection matches 4 run function watching:events/sightings/spotted/run_away_pathfinding/directions/east
execute if block ~ ~ ~ minecraft:dirt_path run data modify entity @s Motion[1] set value 0.01d

#moveModel
tp @e[type=armor_stand,tag=herobrine,tag=!move,distance=..3,tag=!nameTagEntity] ~ ~ ~
tp @e[type=armor_stand,distance=..3,tag=nameTagEntity] ~ ~1.8 ~

#disappearWhenNotInView
execute unless score true ftf.playerViewingHerobrine matches 1 run kill @e[type=armor_stand,tag=herobrine]
