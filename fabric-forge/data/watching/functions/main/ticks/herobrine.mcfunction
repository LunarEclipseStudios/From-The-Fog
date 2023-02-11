#headAnimations
execute as @s[type=armor_stand,tag=move,tag=seen] run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator] 
execute as @s[type=armor_stand,tag=headRotation] run data modify entity @s Pose.Head[0] set from entity @e[type=armor_stand,tag=move,limit=1,sort=nearest] Rotation[1]
execute as @s[type=armor_stand,tag=headRotation] run data modify entity @s Pose.Head[1] set from entity @e[type=armor_stand,tag=move,limit=1,sort=nearest] Rotation[0]

#armAnimations
execute as @s[type=armor_stand,tag=body,tag=armPos,tag=seen] run scoreboard players add @s armPos 1
execute as @s[type=armor_stand,tag=body,tag=!armPos,tag=seen] run scoreboard players remove @s armPos 1
execute as @s[type=armor_stand,tag=body,tag=seen,scores={armPos=0}] run tag @s add armPos
execute as @s[type=armor_stand,tag=body,tag=seen,scores={armPos=38..}] run tag @s remove armPos
execute as @s[type=armor_stand,tag=body,tag=seen] store result entity @s Pose.RightArm[2] float 0.16 run scoreboard players get @s armPos
execute as @s[type=armor_stand,tag=body,tag=seen] store result entity @s Pose.LeftArm[2] float -0.16 run scoreboard players get @s armPos

#groundCorrection
execute if entity @s[type=armor_stand,tag=spread] run tp @e[type=armor_stand,tag=model,distance=0.1..] ~ ~ ~
execute if entity @s[type=armor_stand,tag=spread] if block ~ ~-0.1 ~ #watching:spawn_blocks positioned ~ ~-0.1 ~ run function watching:events/sightings/setup/ground_correction
execute if entity @s[type=armor_stand,tag=spread] unless block ~ ~ ~ #watching:spawn_blocks positioned ~ ~ ~ run function watching:events/sightings/setup/ground_correction
execute if entity @s[type=armor_stand,tag=spread] if block ~ ~1 ~ #minecraft:leaves run kill @e[type=armor_stand,tag=spread]
execute if entity @s[type=armor_stand,tag=spread] if block ~ ~-1 ~ #watching:liquid run kill @e[type=armor_stand,tag=spread]

#creepingSpawnedTooClose
execute if entity @s[type=armor_stand,tag=spread] unless entity @e[type=armor_stand,tag=move] if entity @a[distance=..3] run kill @s

#stalkingRangeLimit
execute if entity @s[type=armor_stand,tag=spread,tag=stalking] if entity @a[distance=..20,gamemode=!spectator] run kill @s

#distanceLimitCreeping
execute as @s[type=armor_stand,tag=spread,tag=creeping] at @s unless entity @a[distance=..16] run kill @s
#distanceLimitStalking
execute as @s[type=armor_stand,tag=spread,tag=stalking] at @s unless entity @a[distance=..50] run kill @s

#lifeLimit
scoreboard players add @s[type=armor_stand,tag=spread,tag=!seen] lifeLimit 1
execute as @s[type=armor_stand,tag=spread] at @s if score @s lifeLimit matches 600.. run kill @s

#removeStrayHerobrineModel
execute as @s[tag=herobrineModel] at @s unless entity @e[type=armor_stand,tag=spread,distance=..3] run function watching:events/general/kill/kill

#moveSetup
execute if entity @s[type=armor_stand,tag=move] run effect give @s invisibility 4 1 true