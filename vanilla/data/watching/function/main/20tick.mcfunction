#20tick
schedule function watching:main/20tick 1s

#ticks
execute as @a at @s run function watching:main/ticks/20ticks/everyone
execute as @e[type=armor_stand,tag=herobrine] at @s run function watching:main/ticks/20ticks/herobrine
execute as @e[type=marker,tag=logged] at @s run function watching:main/ticks/20ticks/logged_markers

#ftf.creepingPosRandomizer
scoreboard players add random ftf.creepingPosRandomizer 1
execute if score random ftf.creepingPosRandomizer matches 4.. run scoreboard players set random ftf.creepingPosRandomizer 1

#sightingChances
execute if score sightingChanceConfig ftf.configOptions matches 1 if score true ftf.startedEvents matches 1 run function watching:events/sightings/chances/1_common
execute if score sightingChanceConfig ftf.configOptions matches 2 if score true ftf.startedEvents matches 1 run function watching:events/sightings/chances/2_uncommon
execute if score sightingChanceConfig ftf.configOptions matches 3 if score true ftf.startedEvents matches 1 run function watching:events/sightings/chances/3_rare

#ghostMiner
execute if score true ftf.startedEvents matches 1 if score ghostMineConfig ftf.configOptions matches 1 in overworld as @a[distance=0..] at @s unless entity @e[type=marker,tag=herobrineEntity] if block ~ ~-1 ~ #minecraft:base_stone_overworld unless blocks ~ ~ ~ ~ 256 ~ ~ ~2 ~ masked if block ~ ~ ~ air if predicate watching:chances/ghost_miner_chance unless block ^1 ^1 ^ #watching:air_blocks unless block ^-1 ^1 ^ #watching:air_blocks run function watching:events/ghost_miner/start_mining
#ghostMinerPosRandomizer
scoreboard players add randomPos ftf.ghostMinerEvents 1
execute if score randomPos ftf.ghostMinerEvents matches 5.. run scoreboard players set randomPos ftf.ghostMinerEvents 1

#randomizeSkinSkipAmount
execute if score randomizeSkinsConfig ftf.configOptions matches 1 run scoreboard players add amount ftf.randomSkinSkipAmount 1
execute if score randomizeSkinsConfig ftf.configOptions matches 1 if score amount ftf.randomSkinSkipAmount matches 4.. run scoreboard players set amount ftf.randomSkinSkipAmount 1

#randomizeSignType
execute unless score sinisterSignsConfig ftf.configOptions matches 0 run scoreboard players add type ftf.signType 1
execute unless score sinisterSignsConfig ftf.configOptions matches 0 if score type ftf.signType matches 13.. run scoreboard players set type ftf.signType 1

#redstoneTorchStructuresAirCheck
execute as @e[type=item_frame,tag=torchCheck] at @s run function watching:main/ticks/torch_check

