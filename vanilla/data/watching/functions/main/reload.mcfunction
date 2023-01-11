#20tick
schedule function watching:main/20tick 1s

##scoreboards
scoreboard objectives add summon_rotation dummy
scoreboard objectives add arm_pos dummy
scoreboard objectives add life dummy
scoreboard objectives add spawn_delay dummy
scoreboard objectives add started dummy
scoreboard objectives add crash dummy
scoreboard objectives add shrine_lit dummy
scoreboard objectives add fire_charge minecraft.used:minecraft.fire_charge
scoreboard objectives add flint_and_steel minecraft.used:minecraft.flint_and_steel
scoreboard objectives add torch_placed minecraft.used:minecraft.torch
scoreboard objectives add bed_placed minecraft.used:minecraft.white_bed
scoreboard objectives add day_passed dummy
scoreboard objectives add day_passed2 dummy
scoreboard objectives add blockCheckHeight dummy
scoreboard objectives add firstReload dummy
#sounds
scoreboard objectives add footsteps dummy
scoreboard objectives add block_breaking dummy

##teams
team add nocol
team modify nocol collisionRule never

#schedule
schedule function watching:events/day_passed 1d
schedule function watching:events/day_passed2 1d
schedule function watching:main/30stick 30s

#3sTick
schedule function watching:main/3stick 2s

#15stick
schedule function watching:main/15stick 15s

#config
scoreboard players reset true started
scoreboard objectives add crashConfig dummy
scoreboard objectives add dayDelayConfig dummy
scoreboard objectives add ghostDoorConfig dummy
scoreboard objectives add creepingConfig dummy
scoreboard objectives add stalkingConfig dummy
scoreboard objectives add ghostMineConfig dummy
scoreboard objectives add poofingTorchesConfig dummy
scoreboard objectives add burningBaseConfig dummy
scoreboard objectives add spotNoiseConfig dummy

execute unless score true firstReload matches 1 run function fromthefog:admin/default_config
scoreboard players set true firstReload 1