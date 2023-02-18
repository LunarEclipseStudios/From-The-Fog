#20tick
schedule function watching:main/20tick 1s
#40tick
schedule function watching:main/40tick 2s
#600tick
schedule function watching:main/600tick 30s

#scheduleEvents
schedule function watching:events/scheduled/torch_break_day_passed 1d
schedule function watching:events/scheduled/burning_base_day_passed 1d

#tempRemoveOldScorboards
scoreboard objectives remove summon_rotation
scoreboard objectives remove arm_pos
scoreboard objectives remove life
scoreboard objectives remove spawn_delay
scoreboard objectives remove started
scoreboard objectives remove shrine_lit
scoreboard objectives remove fire_charge
scoreboard objectives remove flint_and_steel
scoreboard objectives remove torch_placed
scoreboard objectives remove bed_placed
scoreboard objectives remove day_passed
scoreboard objectives remove day_passed2
scoreboard objectives remove blockCheckHeight
scoreboard objectives remove footsteps
scoreboard objectives remove block_breaking
scoreboard objectives remove firstReload

#scoreboardObjectives
scoreboard objectives add leaflessCheckLevel dummy
scoreboard objectives add creepingPosRandomizer dummy
scoreboard objectives add startedEvents dummy
scoreboard objectives add spawnDelay dummy
scoreboard objectives add armPos dummy
scoreboard objectives add crash dummy
scoreboard objectives add torchDayPassed dummy
scoreboard objectives add bedDayPassed dummy
scoreboard objectives add lifeLimit dummy
scoreboard objectives add ghostMinerEvents dummy
scoreboard objectives add crashConfig dummy
scoreboard objectives add dayDelayConfig dummy
scoreboard objectives add herobrineSkinConfig dummy
scoreboard objectives add ghostDoorConfig dummy
scoreboard objectives add creepingConfig dummy
scoreboard objectives add stalkingConfig dummy
scoreboard objectives add ghostMineConfig dummy
scoreboard objectives add poofingTorchesConfig dummy
scoreboard objectives add burningBaseConfig dummy
scoreboard objectives add spotNoiseConfig dummy
scoreboard objectives add glowingEyesConfig dummy
scoreboard objectives add randomizeSkinsConfig dummy
scoreboard objectives add randomSkinSkipAmount dummy
scoreboard objectives add sightingChanceConfig dummy
scoreboard objectives add jumpscareConfig dummy
scoreboard objectives add creepingVanishingDelayConfig dummy
scoreboard objectives add stalkingVanishingDelayConfig dummy

#configDefaults
execute unless score true crashConfig matches 0.. run function watching:config/crash/false
execute unless score number dayDelayConfig matches 0.. run function watching:config/start_delay/3
execute unless score true ghostDoorConfig matches 0.. run function watching:config/ghost_door/true
execute unless score true creepingConfig matches 0.. run function watching:config/creeping/true
execute unless score true stalkingConfig matches 0.. run function watching:config/stalking/true
execute unless score true ghostMineConfig matches 0.. run function watching:config/ghost_mine/true
execute unless score true poofingTorchesConfig matches 0.. run function watching:config/disappearing_torches/true
execute unless score true burningBaseConfig matches 0.. run function watching:config/burning_base/false
execute unless score true spotNoiseConfig matches 0.. run function watching:config/spot_noise/true
execute unless score true glowingEyesConfig matches 0.. run function watching:config/glowing_eyes/true
execute unless score skin herobrineSkinConfig matches -5.. run function watching:config/herobrine_skin/1_default
execute unless score true randomizeSkinsConfig matches 0.. run function watching:config/randomize_skins/false
execute unless score chance sightingChanceConfig matches 0.. run function watching:config/sighting_chance/2_uncommon
execute unless score true jumpscareConfig matches 0.. run function watching:config/jumpscare/true
execute unless score number creepingVanishingDelayConfig matches 0.. run function watching:config/creeping_vanishing_delay/none
execute unless score number stalkingVanishingDelayConfig matches 0.. run function watching:config/stalking_vanishing_delay/none

#noCollisionTeam
team add nocol
team modify nocol collisionRule never