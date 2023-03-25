#20tick
schedule function watching:main/20tick 1s

#ticks
execute as @a at @s run function watching:main/ticks/everyone_20tick

#creepingPosRandomizer
scoreboard players add random creepingPosRandomizer 1
execute if score random creepingPosRandomizer matches 4.. run scoreboard players set random creepingPosRandomizer 1

#sightingChances
execute if score chance sightingChanceConfig matches 1 if score true startedEvents matches 1 run function watching:events/sightings/chances/1_common
execute if score chance sightingChanceConfig matches 2 if score true startedEvents matches 1 run function watching:events/sightings/chances/2_uncommon
execute if score chance sightingChanceConfig matches 3 if score true startedEvents matches 1 run function watching:events/sightings/chances/3_rare

#removeTraces
execute as @e[type=marker,tag=logged] at @s run function watching:events/block_detection/technical/remove_traces

#relightShrine
execute as @e[type=marker,tag=fireTrace,tag=logged] at @s unless entity @a[distance=..100,gamemode=!spectator] unless block ~ ~ ~ fire run setblock ~ ~ ~ fire

#chilledCandles
execute if score true chilledCandlesConfig matches 1 as @e[type=marker,tag=candleTrace,tag=logged] at @s unless score true chilledCandlesDayPassed matches 1.. unless entity @a[distance=..100,gamemode=!spectator] run function watching:events/chilled_candles/try_douse

#ghostDoors
execute if score true ghostDoorConfig matches 1 as @e[type=marker,tag=doorTrace,tag=logged] at @s if entity @a if predicate watching:chances/door_ghost_chance if predicate watching:checks/is_night_check unless entity @e[tag=spread] unless entity @e[tag=doorGhost] run function watching:events/door_open/create_door_ghost

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
execute as @e[type=armor_stand,tag=secondaryRotate] at @s unless entity @s[tag=pauseRot] run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]

#randomizeSkinSkipAmount
execute if score true randomizeSkinsConfig matches 1 run scoreboard players add amount randomSkinSkipAmount 1
execute if score true randomizeSkinsConfig matches 1 if score amount randomSkinSkipAmount matches 4.. run scoreboard players set amount randomSkinSkipAmount 1

#randomizeSignType
execute unless score true sinisterSignsConfig matches 0 run scoreboard players add type signType 1
execute unless score true sinisterSignsConfig matches 0 if score type signType matches 13.. run scoreboard players set type signType 1

#redstoneTorchStructuresAirCheck
execute as @e[type=item_frame,tag=torchCheck] at @s run function watching:main/ticks/torch_check

