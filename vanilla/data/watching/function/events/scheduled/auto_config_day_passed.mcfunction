#rescheduleEvent
schedule function watching:events/scheduled/auto_config_day_passed 1d

#add 1 day
scoreboard players add autoConfigDays ftf.autoConfigDaysPassed 1

#run config changes 
#day 1
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 1 run scoreboard players set lurkingConfig ftf.configOptions 1
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 1 run scoreboard players set sightingChanceConfig ftf.configOptions 3
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 1 run scoreboard players set chilledCandlesConfig ftf.configOptions 1

#day 4
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 4 run scoreboard players set sightingChanceConfig ftf.configOptions 2
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 4 run scoreboard players set ghostMineConfig ftf.configOptions 1

#day 5
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 5 run scoreboard players set fearfulFootstepsConfig ftf.configOptions 1

#day 8
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 8 run scoreboard players set dreadfulDonationConfig ftf.configOptions 1

#day 10
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 10 run scoreboard players set sightingChanceConfig ftf.configOptions 1
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 10 run scoreboard players set poofingTorchesConfig ftf.configOptions 1

#day 13
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 13 run scoreboard players set stalkingConfig ftf.configOptions 1
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 13 run scoreboard players set sightingChanceConfig ftf.configOptions 3

#day 14
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 14 run scoreboard players set sightingSenseConfig ftf.configOptions 1

#day 16
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 16 run scoreboard players set sightingChanceConfig ftf.configOptions 2

#day 19
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 19 run scoreboard players set ghostDoorConfig ftf.configOptions 1

#day 20
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 20 run scoreboard players set rekindlingShrineConfig ftf.configOptions 1

#day 25
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 25 run scoreboard players set sinisterSignsConfig ftf.configOptions 1

#day 28
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 28 run scoreboard players set sightingChanceConfig ftf.configOptions 1

#day 30
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 30 run scoreboard players set creepingConfig ftf.configOptions 1
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 30 run scoreboard players set sightingChanceConfig ftf.configOptions 3

#day 35
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 35 run scoreboard players set crimsonCurseConfig ftf.configOptions 1

#day 40
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 40 run scoreboard players set nightmareMechanicConfig ftf.configOptions 1

#day 45
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 45 run scoreboard players set shrineSupriseConfig ftf.configOptions 1

#day 50
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 50 run scoreboard players set stalkingVanishingDelayConfig ftf.configOptions 1
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 50 run scoreboard players set windowWatcherConfig ftf.configOptions 1

#day 60
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 60 run scoreboard players set sightingChanceConfig ftf.configOptions 2
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 60 run scoreboard players set nameTagConfig ftf.configOptions 2

#day 70
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 70 run scoreboard players set creepingVanishingDelayConfig ftf.configOptions 1
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 70 run scoreboard players set stalkingVanishingDelayConfig ftf.configOptions 2
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 70 run scoreboard players set nameTagConfig ftf.configOptions 1

#day 90
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 90 run scoreboard players set sightingChanceConfig ftf.configOptions 1

#day 100
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 100 run scoreboard players set creepingVanishingDelayConfig ftf.configOptions 2
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 100 run scoreboard players set stalkingVanishingDelayConfig ftf.configOptions 3
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 100 run scoreboard players set psuedoCrashConfig ftf.configOptions 1

#day 150
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 150 run scoreboard players set creepingVanishingDelayConfig ftf.configOptions 3
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 150 run scoreboard players set stalkingVanishingDelayConfig ftf.configOptions 4

#day 200
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 200 run scoreboard players set creepingVanishingDelayConfig ftf.configOptions 4

#day 300
execute if score autoConfig ftf.configOptions matches 1 if score autoConfigDays ftf.autoConfigDaysPassed matches 300 run scoreboard players set crashConfig ftf.configOptions 1