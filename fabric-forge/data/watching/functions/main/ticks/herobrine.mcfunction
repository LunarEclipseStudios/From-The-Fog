#tick
execute if entity @s[tag=glassSpotted] run function watching:main/ticks/glass_spotted

#headAnimations
execute unless entity @e[type=armor_stand,tag=runAway] as @s[type=armor_stand,tag=move,tag=seen] unless entity @e[type=armor_stand,tag=fake] run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]
execute as @s[type=armor_stand,tag=headRotation] run data modify entity @s Pose.Head[0] set from entity @e[type=armor_stand,tag=move,limit=1,sort=nearest] Rotation[1]
execute as @s[type=armor_stand,tag=headRotation] run data modify entity @s Pose.Head[1] set from entity @e[type=armor_stand,tag=move,limit=1,sort=nearest] Rotation[0]

#armAnimations
execute as @s[type=armor_stand,tag=body,tag=ftf.armPos,tag=seen] run scoreboard players add @s ftf.armPos 1
execute as @s[type=armor_stand,tag=body,tag=!ftf.armPos,tag=seen] run scoreboard players remove @s ftf.armPos 1
execute as @s[type=armor_stand,tag=body,tag=seen,scores={ftf.armPos=0}] run tag @s add ftf.armPos
execute as @s[type=armor_stand,tag=body,tag=seen,scores={ftf.armPos=38..}] run tag @s remove ftf.armPos
execute as @s[type=armor_stand,tag=body,tag=seen] store result entity @s Pose.RightArm[2] float 0.16 run scoreboard players get @s ftf.armPos
execute as @s[type=armor_stand,tag=body,tag=seen] store result entity @s Pose.LeftArm[2] float -0.16 run scoreboard players get @s ftf.armPos

#SSS
execute if entity @s[tag=body,tag=griddy] run function watching:events/sightings/animations/griddy

#legAnimations
execute if entity @s[tag=legs,tag=walking] run function watching:events/sightings/animations/walking
execute if entity @s[tag=legs,tag=sprinting] run function watching:events/sightings/animations/sprinting

#groundCorrection
execute if entity @s[type=armor_stand,tag=spread] run tp @e[type=armor_stand,tag=model,distance=0.1..] ~ ~ ~
execute unless entity @s[tag=runAway] unless entity @s[tag=spottedByPlayer] if entity @s[type=armor_stand,tag=spread,tag=!fake] if block ~ ~-0.1 ~ #watching:spawning_raycast/no_col_blocks positioned ~ ~-0.1 ~ run function watching:events/sightings/setup/ground_correction
execute unless entity @s[tag=runAway] unless entity @s[tag=spottedByPlayer] if entity @s[type=armor_stand,tag=spread,tag=!fake] unless block ~ ~ ~ #watching:spawning_raycast/no_col_blocks positioned ~ ~ ~ run function watching:events/sightings/setup/ground_correction
execute if entity @s[type=armor_stand,tag=spread] unless entity @e[type=armor_stand,tag=runAway] if block ~ ~1 ~ #minecraft:leaves run function watching:events/general/kill/kill
execute if entity @s[type=armor_stand,tag=spread] if block ~ ~ ~ #watching:liquid run function watching:events/general/kill/kill

#creepingSpawnedTooClose
execute if entity @s[type=armor_stand,tag=spread,tag=!nightmare,tag=!shrine] unless entity @e[type=armor_stand,tag=move] if entity @a[distance=..3] run function watching:events/general/kill/kill

#stalkingRangeLimit
execute if entity @s[type=armor_stand,tag=spread,tag=stalking] if entity @a[distance=..20,gamemode=!spectator] run function watching:events/general/kill/kill

#lurkingRangeLimit
execute if entity @s[type=armor_stand,tag=spread,tag=lurking,tag=!turnAround] as @a[distance=..80,gamemode=!spectator] run function watching:events/sightings/spotted
execute if entity @s[type=armor_stand,tag=spread,tag=lurking] if entity @a[distance=..40,gamemode=!spectator] run function watching:events/general/kill/kill

#distanceLimitCreeping
execute as @s[type=armor_stand,tag=spread,tag=creeping] at @s unless entity @a[distance=..16] run function watching:events/general/kill/kill
#distanceLimitStalking
execute unless entity @e[type=armor_stand,tag=runAway] as @s[type=armor_stand,tag=spread,tag=stalking] at @s unless entity @a[distance=..80] run function watching:events/general/kill/kill
#distanceLimitLurking
execute unless entity @e[type=armor_stand,tag=runAway] as @s[type=armor_stand,tag=spread,tag=lurking] at @s unless entity @a[distance=..150] run function watching:events/general/kill/kill

#lifeLimit
scoreboard players add @s[type=armor_stand,tag=spread,tag=!seen] ftf.lifeLimit 1
execute as @s[type=armor_stand,tag=spread,tag=!runAway] at @s if score @s ftf.lifeLimit matches 600.. run function watching:events/sightings/despawn

#removeStrayHerobrineModel
execute unless entity @e[type=armor_stand,tag=runAway] as @s[tag=herobrineModel] at @s unless entity @e[type=armor_stand,tag=spread,distance=..3] run function watching:events/general/kill/kill

#wolfGrowling
execute if score sightingSenseConfig ftf.configOptions matches 1 if entity @s[type=armor_stand,tag=move] as @e[type=wolf,distance=..30,nbt={AngerTime:0}] at @s if data entity @s Owner if data entity @s {Sitting:1b} run function watching:events/angry_wolf/induce_angry

#slipBehindBlock
execute if entity @s[tag=moveRight] run function watching:events/sightings/spotted/slip_behind_block/right
execute if entity @s[tag=moveLeft] run function watching:events/sightings/spotted/slip_behind_block/left

#facingDirection
#south
execute if entity @s[y_rotation=-45..45] run scoreboard players set @s ftf.facingDirection 1
#west
execute if entity @s[y_rotation=45..135] run scoreboard players set @s ftf.facingDirection 2
#north
execute if entity @s[y_rotation=135..225] run scoreboard players set @s ftf.facingDirection 3
#east
execute if entity @s[y_rotation=225..315] run scoreboard players set @s ftf.facingDirection 4

#runAway
execute if entity @s[tag=move,tag=runAway] run function watching:events/sightings/spotted/run_away_pathfinding/pathfinding

#turnAround
execute if entity @s[tag=turnAround] run function watching:events/sightings/spotted/turn_around

#shrineHerobrineKill
execute if entity @s[tag=shrine] if entity @p[distance=..1] run function watching:events/general/kill/kill