#removeTraces
function watching:events/block_detection/technical/remove_traces

#relightShrine
execute if score rekindlingShrineConfig ftf.configOptions matches 1 if entity @s[tag=fireTrace] unless entity @a[distance=..100,gamemode=!spectator] unless block ~ ~ ~ fire run function watching:events/relighting_shrine/relight

#chilledCandles
execute if score chilledCandlesConfig ftf.configOptions matches 1 if entity @s[tag=candleTrace] if block ~ ~ ~ #candles[lit=true] unless score true ftf.chilledCandlesDayPassed matches 1.. unless entity @a[distance=..100,gamemode=!spectator] run function watching:events/chilled_candles/try_douse

#ghostDoors
execute if score ghostDoorConfig ftf.configOptions matches 1 if entity @s[tag=doorTrace] if entity @p if predicate watching:chances/door_ghost_chance if predicate watching:checks/is_night_check unless entity @e[tag=herobrineEntity] run function watching:events/door_open/create_door_ghost

#disappearingTorches
execute if score poofingTorchesConfig ftf.configOptions matches 1 if entity @p if entity @s[tag=torchTrace] unless score true ftf.torchDayPassed matches 1.. unless entity @a[distance=..100,gamemode=!spectator] run function watching:events/torch_break/try_break

#burningBase
execute if score burningBaseConfig ftf.configOptions matches 1 if entity @p if entity @s[tag=bedTrace] if score true ftf.startedEvents matches 1 unless score true ftf.bedDayPassed matches 1.. unless entity @a[distance=..50,gamemode=!spectator] run function watching:events/burning_base/try_burn

#dreadfulDonation
execute if score dreadfulDonationConfig ftf.configOptions matches 1 if entity @p if entity @s[tag=chestTrace] unless score true ftf.giftDayPassed matches 1.. unless entity @a[distance=..50,gamemode=!spectator] run function watching:events/dreadful_donation/try_donate

#crimsonCurse
execute if score crimsonCurseConfig ftf.configOptions matches 1 if entity @p if entity @s[tag=torchTrace] if score true ftf.startedEvents matches 1 unless score true ftf.crimsonCurseDayPassed matches 1.. unless entity @a[distance=..100,gamemode=!spectator] run function watching:events/crimson_curse/try_curse
