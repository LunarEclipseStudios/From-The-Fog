#removeOtherHerobrines
execute as @e[tag=herobrine] at @s run kill @s

#summon
summon armor_stand ~ ~ ~ {Tags:["spread","model","herobrine","fake","smithed.entity"],Marker:0b,Invisible:1b,Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583,NoBasePlate:1b}

#createModel
#createHeadTrack
execute at @e[tag=spread] run summon minecraft:armor_stand ~ ~ ~ {Tags:["move","seen","herobrine","herobrineModel","smithed.entity","smithed.strict","herobrineEntity"],Invisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,NoBasePlate:1b} 
#createHead&Eyes
execute unless entity @e[type=armor_stand,tag=nightmare] at @e[tag=spread] run summon armor_stand ~ ~ ~ {Tags:["head","model","seen","herobrine","herobrineModel","headRotation","smithed.entity"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Pose:{Head:[6f,9f,0f]}}
execute unless entity @e[type=armor_stand,tag=nightmare] if score glowingEyesConfig ftf.configOptions matches 1 at @e[tag=spread] run summon armor_stand ~ ~ ~ {HasVisualFire:1b,Tags:["eyes","model","seen","herobrine","herobrineModel","headRotation","smithed.entity"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Pose:{Head:[6f,9f,0f]}}
execute unless entity @e[type=armor_stand,tag=nightmare] if score glowingEyesConfig ftf.configOptions matches 0 at @e[tag=spread] run summon armor_stand ~ ~ ~ {HasVisualFire:0b,Tags:["eyes","model","seen","herobrine","herobrineModel","headRotation","smithed.entity"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Pose:{Head:[6f,9f,0f]}}
#createBody&Arms
execute at @e[tag=spread] run summon armor_stand ~ ~ ~ {Tags:["body","model","seen","herobrine","herobrineModel","secondaryRotate","smithed.entity"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if score glowingEyesConfig ftf.configOptions matches 1 at @e[tag=spread] run summon armor_stand ~ ~ ~ {HasVisualFire:1b,Tags:["emissive","body","model","seen","herobrine","herobrineModel","secondaryRotate","smithed.entity"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if score glowingEyesConfig ftf.configOptions matches 0 at @e[tag=spread] run summon armor_stand ~ ~ ~ {HasVisualFire:0b,Tags:["emissive","body","model","seen","herobrine","herobrineModel","secondaryRotate","smithed.entity"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
scoreboard players set @e[tag=body] ftf.armPos 1
#createLegs
execute at @e[tag=spread] run summon armor_stand ~ ~ ~ {Tags:["legs","model","seen","herobrine","herobrineModel","secondaryRotate","smithed.entity"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,Small:1b,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if score glowingEyesConfig ftf.configOptions matches 1 at @e[tag=spread] run summon armor_stand ~ ~ ~ {HasVisualFire:1b,Tags:["emissive","legs","model","seen","herobrine","herobrineModel","secondaryRotate","smithed.entity"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,Small:1b,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if score glowingEyesConfig ftf.configOptions matches 0 at @e[tag=spread] run summon armor_stand ~ ~ ~ {HasVisualFire:0b,Tags:["emissive","legs","model","seen","herobrine","herobrineModel","secondaryRotate","smithed.entity"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,Small:1b,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}


# #randomizeSkins
# execute if score randomizeSkinsConfig ftf.configOptions matches 1 if score amount ftf.randomSkinSkipAmount matches 1 run scoreboard players add herobrineSkinConfig ftf.configOptions 1
# execute if score randomizeSkinsConfig ftf.configOptions matches 1 if score amount ftf.randomSkinSkipAmount matches 2 run scoreboard players add herobrineSkinConfig ftf.configOptions 2
# execute if score randomizeSkinsConfig ftf.configOptions matches 1 if score amount ftf.randomSkinSkipAmount matches 3 run scoreboard players add herobrineSkinConfig ftf.configOptions 3
# execute if score herobrineSkinConfig ftf.configOptions matches 18.. run scoreboard players set herobrineSkinConfig ftf.configOptions 1

#skinSelect
function watching:events/sightings/setup/select_skin
tag @e[type=armor_stand,tag=seen] add pauseRot

#creepingPos
tp @e[tag=herobrine,tag=!headRotation,distance=..1.5] ~ ~ ~ ~ ~