#20tick
schedule function watching:main/20tick 1s

#creepingPosRandomizer
scoreboard players add random creepingPosRandomizer 1
execute if score random creepingPosRandomizer matches 4.. run scoreboard players set random creepingPosRandomizer 1

#sightingChances
execute if score chance sightingChanceConfig matches 1 if score true startedEvents matches 1 run function watching:events/sightings/chances/1_common
execute if score chance sightingChanceConfig matches 2 if score true startedEvents matches 1 run function watching:events/sightings/chances/2_uncommon
execute if score chance sightingChanceConfig matches 3 if score true startedEvents matches 1 run function watching:events/sightings/chances/3_rare

#removeTraces
execute as @e[type=marker,tag=doorTrace,tag=logged] at @s unless block ~ ~ ~ #doors run function watching:events/general/kill/kill_trace_marker
execute as @e[type=marker,tag=torchTrace,tag=logged] at @s unless block ~ ~ ~ #watching:torches run function watching:events/general/kill/kill_trace_marker
execute as @e[type=marker,tag=bedTrace,tag=logged] at @s unless block ~ ~ ~ #beds run function watching:events/general/kill/kill_trace_marker
execute as @e[type=marker,tag=chestTrace,tag=logged] at @s unless block ~ ~ ~ chest run function watching:events/general/kill/kill_trace_marker
execute as @e[type=marker,tag=lanternTrace,tag=logged] at @s unless block ~ ~ ~ lantern run function watching:events/general/kill/kill_trace_marker

#ghostDoors
execute as @e[type=marker,tag=doorTrace,tag=logged] at @s if entity @a if score true ghostDoorConfig matches 1 if predicate watching:chances/door_ghost_chance if predicate watching:checks/is_night_check unless entity @e[tag=spread] unless entity @e[tag=doorGhost] run function watching:events/door_open/create_door_ghost

#disappearingTorches
execute if score true poofingTorchesConfig matches 1 if entity @a as @e[type=marker,tag=torchTrace] at @s unless score true torchDayPassed matches 1.. unless entity @a[distance=..100,gamemode=!spectator] run function watching:events/torch_break/try_break

#burningBase
execute if score true burningBaseConfig matches 1 if entity @a as @e[type=marker,tag=bedTrace,sort=random,limit=1] at @s if score true startedEvents matches 1 unless score true bedDayPassed matches 1.. unless entity @a[distance=..50,gamemode=!spectator] run function watching:events/burning_base/try_burn

#dreadfulDonation
execute if score true dreadfulDonationConfig matches 1 if entity @a as @e[type=marker,tag=chestTrace,sort=random,limit=1] at @s unless score true giftDayPassed matches 1.. unless entity @a[distance=..50,gamemode=!spectator] run function watching:events/dreadful_donation/try_donate

#crimsonCurse
execute if score true crimsonCurseConfig matches 1 if entity @a as @e[type=marker,tag=torchTrace] at @s if score true startedEvents matches 1 unless score true crimsonCurseDayPassed matches 1.. unless entity @a[distance=..100,gamemode=!spectator] run function watching:events/crimson_curse/try_curse

#ghostMiner
execute if score true startedEvents matches 1 if score true ghostMineConfig matches 1 in overworld as @a[distance=0..] at @s unless entity @e[type=marker,tag=ghostMiner] if block ~ ~-1 ~ #minecraft:base_stone_overworld unless blocks ~ ~ ~ ~ 256 ~ ~ ~2 ~ masked if block ~ ~ ~ air if predicate watching:chances/ghost_miner_chance unless block ^1 ^1 ^ #watching:air_blocks unless block ^-1 ^1 ^ #watching:air_blocks run function watching:events/ghost_miner/start_mining
#ghostMinerPosRandomizer
scoreboard players add randomPos ghostMinerEvents 1
execute if score randomPos ghostMinerEvents matches 5.. run scoreboard players set randomPos ghostMinerEvents 1

#bodyTurningAnimation
execute as @e[tag=seen,tag=!head,tag=!eyes,tag=!move] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]

#randomizeSkinSkipAmount
execute if score true randomizeSkinsConfig matches 1 run scoreboard players add amount randomSkinSkipAmount 1
execute if score true randomizeSkinsConfig matches 1 if score amount randomSkinSkipAmount matches 4.. run scoreboard players set amount randomSkinSkipAmount 1

#redstoneTorchStructuresAirCheck
execute as @e[type=item_frame,tag=torchCheck] at @s run function watching:main/ticks/torch_check

#tempTraceReplace
execute as @e[type=marker,tag=torch_trace,tag=!torchTrace] run tag @s add torchTrace
execute as @e[type=marker,tag=bed_trace,tag=!bedTrace] run tag @s add bedTrace

