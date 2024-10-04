# Runs a series of events to enable autoConfig

# First, let's shut everything already enabled off.
scoreboard players set crashConfig ftf.configOptions 0
scoreboard players set dayDelayConfig ftf.configOptions -1
scoreboard players set ghostDoorConfig ftf.configOptions 0
scoreboard players set ghostMineConfig ftf.configOptions 0
scoreboard players set creepingConfig ftf.configOptions 0
scoreboard players set stalkingConfig ftf.configOptions 0
scoreboard players set poofingTorchesConfig ftf.configOptions 0
scoreboard players set burningBaseConfig ftf.configOptions 0
scoreboard players set sightingChanceConfig ftf.configOptions 3
scoreboard players set creepingVanishingDelayConfig ftf.configOptions 0
scoreboard players set stalkingVanishingDelayConfig ftf.configOptions 0
scoreboard players set jumpscareConfig ftf.configOptions 1
scoreboard players set noSleepConfig ftf.configOptions 1
scoreboard players set dreadfulDonationConfig ftf.configOptions 0
scoreboard players set crimsonCurseConfig ftf.configOptions 0
scoreboard players set OGshrineMechanicConfig ftf.configOptions 0
scoreboard players set nightmareMechanicConfig ftf.configOptions 0
scoreboard players set nightmareMechanicConfig ftf.configOptions 0
scoreboard players set shrineSupriseConfig ftf.configOptions 0
scoreboard players set windowWatcherConfig ftf.configOptions 0
scoreboard players set chilledCandlesConfig ftf.configOptions 0
scoreboard players set sinisterSignsConfig ftf.configOptions 0
scoreboard players set sightingSenseConfig ftf.configOptions 0
scoreboard players set rekindlingShrineConfig ftf.configOptions 0
scoreboard players set fearfulFootstepsConfig ftf.configOptions 0
scoreboard players set lurkingConfig ftf.configOptions 0
scoreboard players set shrineSupriseConfig ftf.configOptions 0
scoreboard players set psuedoCrashConfig ftf.configOptions 0

# Play a spooky sound >:3
execute unless entity @s[tag=defautlingConfig] run playsound block.enchantment_table.use master @s ~ ~ ~ 1 0

# And, of course, enable autoConfig
scoreboard players set autoConfig ftf.configOptions 1
scoreboard players reset autoConfigDays ftf.autoConfigDaysPassed
schedule function watching:events/scheduled/auto_config_day_passed 1d

# Open the config again
execute unless entity @s[tag=defautlingConfig] run function fromthefog:admin/config