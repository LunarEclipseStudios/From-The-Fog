#createHeadTrack
execute at @e[tag=spread] run summon minecraft:armor_stand ~ ~ ~ {Tags:["move","seen","herobrine","herobrineModel","smithed.entity"],Invisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,NoBasePlate:1b} 
#createHead&Eyes
execute unless entity @e[type=armor_stand,tag=nightmare] at @e[tag=spread] run summon armor_stand ~ ~ ~ {Tags:["head","model","seen","herobrine","herobrineModel","headRotation","smithed.entity"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Pose:{Head:[6f,9f,0f]}}
execute unless entity @e[type=armor_stand,tag=nightmare] if score glowingEyesConfig ftf.configOptions matches 1 at @e[tag=spread] run summon armor_stand ~ ~ ~ {HasVisualFire:1b,Tags:["eyes","model","seen","herobrine","herobrineModel","headRotation","smithed.entity"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Pose:{Head:[6f,9f,0f]}}
execute unless entity @e[type=armor_stand,tag=nightmare] if score glowingEyesConfig ftf.configOptions matches 0 at @e[tag=spread] run summon armor_stand ~ ~ ~ {HasVisualFire:0b,Tags:["eyes","model","seen","herobrine","herobrineModel","headRotation","smithed.entity"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Pose:{Head:[6f,9f,0f]}}
#nightmareCreateHead&Eyes
execute if entity @e[type=armor_stand,tag=nightmare] at @e[tag=spread] run summon armor_stand ~ ~ ~ {Tags:["head","model","seen","herobrine","herobrineModel","nightmareHeadRotation","smithed.entity"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Pose:{Head:[0f,0f,0f]}}
execute if entity @e[type=armor_stand,tag=nightmare] if score glowingEyesConfig ftf.configOptions matches 1 at @e[tag=spread] run summon armor_stand ~ ~ ~ {HasVisualFire:1b,Tags:["eyes","model","seen","herobrine","herobrineModel","nightmareHeadRotation","smithed.entity"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Pose:{Head:[0f,0f,0f]}}
execute if entity @e[type=armor_stand,tag=nightmare] if score glowingEyesConfig ftf.configOptions matches 0 at @e[tag=spread] run summon armor_stand ~ ~ ~ {HasVisualFire:0b,Tags:["eyes","model","seen","herobrine","herobrineModel","nightmareHeadRotation","smithed.entity"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Pose:{Head:[0f,0f,0f]}}
#nightmareHeadRotation
execute if entity @e[type=armor_stand,tag=nightmare,tag=facingWest] as @e[type=armor_stand,tag=nightmareHeadRotation] run data merge entity @s {Pose:{Head:[15f,90f,0f]}}
execute if entity @e[type=armor_stand,tag=nightmare,tag=facingEast] as @e[type=armor_stand,tag=nightmareHeadRotation] run data merge entity @s {Pose:{Head:[15f,-90f,0f]}}
execute if entity @e[type=armor_stand,tag=nightmare,tag=facingSouth] as @e[type=armor_stand,tag=nightmareHeadRotation] run data merge entity @s {Pose:{Head:[15f,0f,0f]}}
execute if entity @e[type=armor_stand,tag=nightmare,tag=facingNorth] as @e[type=armor_stand,tag=nightmareHeadRotation] run data merge entity @s {Pose:{Head:[15f,180f,0f]}}
#createBody&Arms
execute at @e[tag=spread] run summon armor_stand ~ ~ ~ {Tags:["body","model","seen","herobrine","herobrineModel","secondaryRotate","smithed.entity"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if score glowingEyesConfig ftf.configOptions matches 1 at @e[tag=spread] run summon armor_stand ~ ~ ~ {HasVisualFire:1b,Tags:["emissive","body","model","seen","herobrine","herobrineModel","secondaryRotate","smithed.entity"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if score glowingEyesConfig ftf.configOptions matches 0 at @e[tag=spread] run summon armor_stand ~ ~ ~ {HasVisualFire:0b,Tags:["emissive","body","model","seen","herobrine","herobrineModel","secondaryRotate","smithed.entity"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @e[tag=body] at @s run tp @s ~ ~ ~ facing entity @p
scoreboard players set @e[tag=body] ftf.armPos 1
#createLegs
execute at @e[tag=spread] run summon armor_stand ~ ~ ~ {Tags:["legs","model","seen","herobrine","herobrineModel","secondaryRotate","smithed.entity"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,Small:1b,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if score glowingEyesConfig ftf.configOptions matches 1 at @e[tag=spread] run summon armor_stand ~ ~ ~ {HasVisualFire:1b,Tags:["emissive","legs","model","seen","herobrine","herobrineModel","secondaryRotate","smithed.entity"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,Small:1b,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if score glowingEyesConfig ftf.configOptions matches 0 at @e[tag=spread] run summon armor_stand ~ ~ ~ {HasVisualFire:0b,Tags:["emissive","legs","model","seen","herobrine","herobrineModel","secondaryRotate","smithed.entity"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,Small:1b,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @e[tag=legs] at @s run tp @s ~ ~ ~ facing entity @p

#noSleepMob
execute if score noSleepConfig ftf.configOptions matches 1 at @e[tag=spread] run summon husk ~ -1 ~ {Tags:["noSleepMob","herobrine","smithed.entity"],Silent:1b,NoGravity:1b,Invulnerable:1b,DeathLootTable:"/",Team:"nocol",NoAI:1b,IsBaby:1b,DrownedConversionTime:-99999,ActiveEffects:[{Id:12,Amplifier:1b,Duration:199999980,ShowParticles:0b},{Id:14,Amplifier:1b,Duration:199999980,ShowParticles:0b}]}
execute if score noSleepConfig ftf.configOptions matches 1 at @e[tag=spread] run tp @e[type=husk,tag=herobrine] ~ ~ ~

#randomizeSkins
execute unless score randomizeCustomSkinsConfig ftf.configOptions matches 1 if score randomizeSkinsConfig ftf.configOptions matches 1 if score amount ftf.randomSkinSkipAmount matches 1 run scoreboard players add herobrineSkinConfig ftf.configOptions 1
execute unless score randomizeCustomSkinsConfig ftf.configOptions matches 1 if score randomizeSkinsConfig ftf.configOptions matches 1 if score amount ftf.randomSkinSkipAmount matches 2 run scoreboard players add herobrineSkinConfig ftf.configOptions 2
execute unless score randomizeCustomSkinsConfig ftf.configOptions matches 1 if score randomizeSkinsConfig ftf.configOptions matches 1 if score amount ftf.randomSkinSkipAmount matches 3 run scoreboard players add herobrineSkinConfig ftf.configOptions 3
execute unless score randomizeCustomSkinsConfig ftf.configOptions matches 1 if score randomizeSkinsConfig ftf.configOptions matches 1 if score herobrineSkinConfig ftf.configOptions matches 23.. run scoreboard players set herobrineSkinConfig ftf.configOptions 1
execute unless score randomizeCustomSkinsConfig ftf.configOptions matches 1 if score randomizeSkinsConfig ftf.configOptions matches 1 if score herobrineSkinConfig ftf.configOptions matches ..0 run scoreboard players set herobrineSkinConfig ftf.configOptions 1

#randomizeCustomSkins
execute unless score randomizeSkinsConfig ftf.configOptions matches 1 if score randomizeCustomSkinsConfig ftf.configOptions matches 1 run scoreboard players add herobrineSkinConfig ftf.configOptions 1
execute unless score randomizeSkinsConfig ftf.configOptions matches 1 if score randomizeCustomSkinsConfig ftf.configOptions matches 1 if score herobrineSkinConfig ftf.configOptions matches 0.. run scoreboard players set herobrineSkinConfig ftf.configOptions -5

#randomizeBothSkins
execute if score randomizeCustomSkinsConfig ftf.configOptions matches 1 if score randomizeSkinsConfig ftf.configOptions matches 1 if score amount ftf.randomSkinSkipAmount matches 1 run scoreboard players add herobrineSkinConfig ftf.configOptions 1
execute if score randomizeCustomSkinsConfig ftf.configOptions matches 1 if score randomizeSkinsConfig ftf.configOptions matches 1 if score amount ftf.randomSkinSkipAmount matches 2 run scoreboard players add herobrineSkinConfig ftf.configOptions 2
execute if score randomizeCustomSkinsConfig ftf.configOptions matches 1 if score randomizeSkinsConfig ftf.configOptions matches 1 if score amount ftf.randomSkinSkipAmount matches 3 run scoreboard players add herobrineSkinConfig ftf.configOptions 3
execute if score randomizeCustomSkinsConfig ftf.configOptions matches 1 if score randomizeSkinsConfig ftf.configOptions matches 1 if score herobrineSkinConfig ftf.configOptions matches 23.. run scoreboard players set herobrineSkinConfig ftf.configOptions -5

#hittingThatGriddy
execute if score hittingThatGriddyConfig ftf.configOptions matches 1 as @e[type=armor_stand,tag=body] run tag @s add griddy

#skinSelect
schedule function watching:events/sightings/setup/select_skin 8t