# Runs a series of events to disable autoConfig


# First, let's reset everything to "default" and open the normal config.

scoreboard players set dayDelayConfig ftf.configOptions 3
scoreboard players set ghostDoorConfig ftf.configOptions 1
scoreboard players set ghostMineConfig ftf.configOptions 1
scoreboard players set creepingConfig ftf.configOptions 1
scoreboard players set stalkingConfig ftf.configOptions 1
scoreboard players set poofingTorchesConfig ftf.configOptions 1
scoreboard players set sightingChanceConfig ftf.configOptions 2
scoreboard players set dreadfulDonationConfig ftf.configOptions 1
scoreboard players set crimsonCurseConfig ftf.configOptions 1
scoreboard players set nightmareMechanicConfig ftf.configOptions 1
scoreboard players set windowWatcherConfig ftf.configOptions 1
scoreboard players set chilledCandlesConfig ftf.configOptions 1
scoreboard players set sinisterSignsConfig ftf.configOptions 1
scoreboard players set sightingSenseConfig ftf.configOptions 1
scoreboard players set rekindlingShrineConfig ftf.configOptions 1
scoreboard players set fearfulFootstepsConfig ftf.configOptions 1
scoreboard players set lurkingConfig ftf.configOptions 1

# Of course, disable autoConfig
scoreboard players set autoConfig ftf.configOptions 0
scoreboard players reset autoConfigDays ftf.autoConfigDaysPassed
schedule clear watching:events/scheduled/auto_config_day_passed

# Play a spooky sound >:3
execute unless entity @s[tag=defautlingConfig] run playsound block.enchantment_table.use master @s ~ ~ ~ 1 0

# Re-open the config
execute unless entity @s[tag=defautlingConfig] run function watching:config/pages/6