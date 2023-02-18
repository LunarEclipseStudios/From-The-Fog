#createHeadTrack
execute at @e[tag=spread] run summon minecraft:armor_stand ~ ~ ~ {Tags:["move","seen","herobrine","herobrineModel"],Invisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,NoBasePlate:1b} 
#createHead&Eyes
execute at @e[tag=spread] run summon armor_stand ~ ~ ~ {Tags:["head","model","seen","herobrine","herobrineModel","headRotation"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Pose:{Head:[6f,9f,0f]}}
execute if score true glowingEyesConfig matches 1 at @e[tag=spread] run summon armor_stand ~ ~ ~ {HasVisualFire:1b,Tags:["eyes","model","seen","herobrine","herobrineModel","headRotation"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Pose:{Head:[6f,9f,0f]}}
execute if score true glowingEyesConfig matches 0 at @e[tag=spread] run summon armor_stand ~ ~ ~ {HasVisualFire:0b,Tags:["eyes","model","seen","herobrine","herobrineModel","headRotation"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Pose:{Head:[6f,9f,0f]}}
#createBody&Arms
execute at @e[tag=spread] run summon armor_stand ~ ~ ~ {Tags:["body","model","seen","herobrine","herobrineModel"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if score true glowingEyesConfig matches 1 at @e[tag=spread] run summon armor_stand ~ ~ ~ {HasVisualFire:1b,Tags:["emissive","body","model","seen","herobrine","herobrineModel"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if score true glowingEyesConfig matches 0 at @e[tag=spread] run summon armor_stand ~ ~ ~ {HasVisualFire:0b,Tags:["emissive","body","model","seen","herobrine","herobrineModel"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @e[tag=body] at @s run tp @s ~ ~ ~ facing entity @p
scoreboard players set @e[tag=body] armPos 1

#noSleepMob
execute at @e[tag=spread] run summon zombie ~ ~ ~ {Tags:["herobrine"],Silent:1b,Invulnerable:1b,DeathLootTable:"/",Team:"nocol",NoAI:1b,IsBaby:1b,DrownedConversionTime:-99999,ActiveEffects:[{Id:11,Amplifier:12b,Duration:1999980,ShowParticles:0b},{Id:14,Amplifier:1b,Duration:1999980,ShowParticles:0b}]}

#randomizeSkins
execute if score true randomizeSkinsConfig matches 1 if score amount randomSkinSkipAmount matches 1 run scoreboard players add skin herobrineSkinConfig 1
execute if score true randomizeSkinsConfig matches 1 if score amount randomSkinSkipAmount matches 2 run scoreboard players add skin herobrineSkinConfig 2
execute if score true randomizeSkinsConfig matches 1 if score amount randomSkinSkipAmount matches 3 run scoreboard players add skin herobrineSkinConfig 3
execute if score skin herobrineSkinConfig matches 18.. run scoreboard players set skin herobrineSkinConfig -5

#skinSelect
function watching:events/sightings/setup/select_skin