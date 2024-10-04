#20tick
schedule function watching:main/20tick 1s
#40tick
schedule function watching:main/40tick 2s
#600tick
schedule function watching:main/600tick 30s

#tempRemoveOldScoreboardObjectives
scoreboard objectives remove leaflessCheckLevel
scoreboard objectives remove creepingPosRandomizer
scoreboard objectives remove startedEvents
scoreboard objectives remove spawnDelay
scoreboard objectives remove turnAround
scoreboard objectives remove slipBehindBlock
scoreboard objectives remove facingDirection
scoreboard objectives remove signType
scoreboard objectives remove playerViewingHerobrine
scoreboard objectives remove armPos
scoreboard objectives remove rightLegPos
scoreboard objectives remove leftLegPos
scoreboard objectives remove rightLegPos
scoreboard objectives remove leftLegPos
scoreboard objectives remove crash
scoreboard objectives remove openedChest
scoreboard objectives remove torchDayPassed
scoreboard objectives remove chilledCandlesDayPassed
scoreboard objectives remove crimsonCurseDayPassed
scoreboard objectives remove giftDayPassed
scoreboard objectives remove bedDayPassed
scoreboard objectives remove lifeLimit
scoreboard objectives remove LBSpecialEvent1
scoreboard objectives remove ghostMinerEvents
scoreboard objectives remove randomSkinSkipAmount

#scoreboardObjectives
scoreboard objectives add ftf.creepingPosRandomizer dummy
scoreboard objectives add ftf.startedEvents dummy
scoreboard objectives add ftf.spawnDelay dummy
scoreboard objectives add ftf.turnAround dummy
scoreboard objectives add ftf.slipBehindBlock dummy
scoreboard objectives add ftf.facingDirection dummy
scoreboard objectives add ftf.signType dummy
scoreboard objectives add ftf.playerViewingHerobrine dummy
scoreboard objectives add ftf.armPos dummy
scoreboard objectives add ftf.rightArmPos dummy
scoreboard objectives add ftf.leftArmPos dummy
scoreboard objectives add ftf.rightLegPos dummy
scoreboard objectives add ftf.leftLegPos dummy
scoreboard objectives add ftf.crash dummy
scoreboard objectives add ftf.openedChest custom:open_chest
scoreboard objectives add ftf.torchDayPassed dummy
scoreboard objectives add ftf.autoConfigDaysPassed dummy
scoreboard objectives add ftf.chilledCandlesDayPassed dummy
scoreboard objectives add ftf.crimsonCurseDayPassed dummy
scoreboard objectives add ftf.giftDayPassed dummy
scoreboard objectives add ftf.bedDayPassed dummy
scoreboard objectives add ftf.lifeLimit dummy
scoreboard objectives add ftf.LBSpecialEvent1 dummy
scoreboard objectives add ftf.ghostMinerEvents dummy
scoreboard objectives add ftf.randomSkinSkipAmount dummy
scoreboard objectives add ftf.timePlayed custom:play_time
scoreboard objectives add ftf.raycastLimit dummy

scoreboard objectives add ftf.configOptions dummy

#scheduleEvents
schedule function watching:events/scheduled/torch_break_day_passed 1d
schedule function watching:events/scheduled/burning_base_day_passed 1d
schedule function watching:events/scheduled/herobrine_gift_day_passed 1d
schedule function watching:events/scheduled/crimson_curse_day_passed 1d
schedule function watching:events/scheduled/chilled_candles_day_passed 1d

#configTransfer
scoreboard players operation crashConfig ftf.configOptions = true crashConfig
scoreboard players operation dayDelayConfig ftf.configOptions = number dayDelayConfig
scoreboard players operation ghostDoorConfig ftf.configOptions = true ghostDoorConfig
scoreboard players operation creepingConfig ftf.configOptions = true creepingConfig
scoreboard players operation stalkingConfig ftf.configOptions = true stalkingConfig
scoreboard players operation ghostMineConfig ftf.configOptions = true ghostMineConfig
scoreboard players operation poofingTorchesConfig ftf.configOptions = true poofingTorchesConfig
scoreboard players operation burningBaseConfig ftf.configOptions = true burningBaseConfig
scoreboard players operation spotNoiseConfig ftf.configOptions = true spotNoiseConfig
scoreboard players operation glowingEyesConfig ftf.configOptions = true glowingEyesConfig
scoreboard players operation herobrineSkinConfig ftf.configOptions = skin herobrineSkinConfig
scoreboard players operation randomizeSkinsConfig ftf.configOptions = true randomizeSkinsConfig
scoreboard players operation randomizeCustomSkinsConfig ftf.configOptions = true randomizeCustomSkinsConfig
scoreboard players operation sightingChanceConfig ftf.configOptions = chance sightingChanceConfig
scoreboard players operation jumpscareConfig ftf.configOptions = true jumpscareConfig
scoreboard players operation creepingVanishingDelayConfig ftf.configOptions = number creepingVanishingDelayConfig
scoreboard players operation stalkingVanishingDelayConfig ftf.configOptions = number stalkingVanishingDelayConfig
scoreboard players operation noSleepConfig ftf.configOptions = true noSleepConfig
scoreboard players operation dreadfulDonationConfig ftf.configOptions = true dreadfulDonationConfig
scoreboard players operation crimsonCurseConfig ftf.configOptions = true crimsonCurseConfig
scoreboard players operation OGshrineMechanicConfig ftf.configOptions = true OGshrineMechanicConfig
scoreboard players operation nightmareMechanicConfig ftf.configOptions = true nightmareMechanicConfig
scoreboard players operation windowWatcherConfig ftf.configOptions = true windowWatcherConfig
scoreboard players operation chilledCandlesConfig ftf.configOptions = true chilledCandlesConfig
scoreboard players operation sinisterSignsConfig ftf.configOptions = true sinisterSignsConfig
scoreboard players operation lurkingLanguageConfig ftf.configOptions = lang lurkingLanguageConfig

#configDefaults
execute unless score crashConfig ftf.configOptions matches 0.. run function watching:config/crash/false
execute unless score dayDelayConfig ftf.configOptions matches -1.. run function watching:config/start_delay/reset
execute unless score ghostDoorConfig ftf.configOptions matches 0.. run function watching:config/ghost_door/true
execute unless score creepingConfig ftf.configOptions matches 0.. run function watching:config/creeping/true
execute unless score stalkingConfig ftf.configOptions matches 0.. run function watching:config/stalking/true
execute unless score lurkingConfig ftf.configOptions matches 0.. run function watching:config/lurking/true
execute unless score ghostMineConfig ftf.configOptions matches 0.. run function watching:config/ghost_mine/true
execute unless score poofingTorchesConfig ftf.configOptions matches 0.. run function watching:config/disappearing_torches/true
execute unless score burningBaseConfig ftf.configOptions matches 0.. run function watching:config/burning_base/false
execute unless score spotNoiseConfig ftf.configOptions matches 0.. run function watching:config/spot_noise/true
execute unless score glowingEyesConfig ftf.configOptions matches 0.. run function watching:config/glowing_eyes/true
execute unless score herobrineSkinConfig ftf.configOptions matches -5.. run function watching:config/herobrine_skin/1_default
execute unless score randomizeSkinsConfig ftf.configOptions matches 0.. run function watching:config/randomize_skins/false
execute unless score randomizeCustomSkinsConfig ftf.configOptions matches 0.. run function watching:config/randomize_custom_skins/false
execute unless score sightingChanceConfig ftf.configOptions matches 0.. run function watching:config/sighting_chance/2_uncommon
execute unless score jumpscareConfig ftf.configOptions matches 0.. run function watching:config/jumpscare/true
execute unless score creepingVanishingDelayConfig ftf.configOptions matches 0.. run function watching:config/creeping_vanishing_delay/none
execute unless score stalkingVanishingDelayConfig ftf.configOptions matches 0.. run function watching:config/stalking_vanishing_delay/none
execute unless score noSleepConfig ftf.configOptions matches 0.. run function watching:config/no_sleep/true
execute unless score dreadfulDonationConfig ftf.configOptions matches 0.. run function watching:config/dreadful_donation/true
execute unless score crimsonCurseConfig ftf.configOptions matches 0.. run function watching:config/crimson_curse/true
execute unless score OGshrineMechanicConfig ftf.configOptions matches 0.. run function watching:config/og_shrine/false
execute unless score nightmareMechanicConfig ftf.configOptions matches 0.. run function watching:config/nightmare/true
execute unless score windowWatcherConfig ftf.configOptions matches 0.. run function watching:config/window_watcher/true
execute unless score chilledCandlesConfig ftf.configOptions matches 0.. run function watching:config/chilled_candles/true
execute unless score sinisterSignsConfig ftf.configOptions matches 0.. run function watching:config/sinister_signs/true
execute unless score lurkingLanguageConfig ftf.configOptions matches 0.. run function watching:config/lurking_language/english
execute unless score sightingSenseConfig ftf.configOptions matches 0.. run function watching:config/sighting_sense/true
execute unless score hittingThatGriddyConfig ftf.configOptions matches 0.. run function watching:config/griddy/false
execute unless score nameTagConfig ftf.configOptions matches 0.. run function watching:config/nametag/off
execute unless score rekindlingShrineConfig ftf.configOptions matches 0.. run function watching:config/rekindling_shrine/true
execute unless score advancementsConfig ftf.configOptions matches 0.. run function watching:config/advancements/false
execute unless score fearfulFootstepsConfig ftf.configOptions matches 0.. run function watching:config/fearful_footsteps/true
execute unless score shrineSupriseConfig ftf.configOptions matches 0.. run function watching:config/shrine_suprise/false
execute unless score autoConfig ftf.configOptions matches 0.. run function watching:config/autoconfig/disable

#tempRemoveOldConfigScoreboards
scoreboard objectives remove crashConfig
scoreboard objectives remove dayDelayConfig
scoreboard objectives remove herobrineSkinConfig
scoreboard objectives remove ghostDoorConfig
scoreboard objectives remove creepingConfig
scoreboard objectives remove stalkingConfig
scoreboard objectives remove ghostMineConfig
scoreboard objectives remove poofingTorchesConfig
scoreboard objectives remove burningBaseConfig
scoreboard objectives remove spotNoiseConfig
scoreboard objectives remove glowingEyesConfig
scoreboard objectives remove randomizeSkinsConfig
scoreboard objectives remove sightingChanceConfig
scoreboard objectives remove jumpscareConfig
scoreboard objectives remove creepingVanishingDelayConfig
scoreboard objectives remove stalkingVanishingDelayConfig
scoreboard objectives remove noSleepConfig
scoreboard objectives remove dreadfulDonationConfig
scoreboard objectives remove crimsonCurseConfig
scoreboard objectives remove OGshrineMechanicConfig
scoreboard objectives remove nightmareMechanicConfig
scoreboard objectives remove windowWatcherConfig
scoreboard objectives remove chilledCandlesConfig
scoreboard objectives remove sinisterSignsConfig
scoreboard objectives remove lurkingLanguageConfig

#noCollisionTeam
team add nocol
team modify nocol collisionRule never

#tempForceloadDataleakFix
forceload remove all