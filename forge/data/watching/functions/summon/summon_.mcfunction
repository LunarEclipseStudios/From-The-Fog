##summon
summon armor_stand ~ ~ ~ {Tags:["spreadFake","model","herobrineFake"],Marker:0b,Invisible:1b,Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583}

execute at @e[tag=spreadFake] run summon minecraft:villager ~ ~ ~ {Tags:["moveFake","seenFake","herobrineFake"],NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Willing:0b,DespawnDelay:2147483647,Offers:{},Attributes:[{Name:generic.movement_speed,Base:2.0},{Name:"generic.follow_range",Base:64.0F}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]} 
execute at @e[tag=spreadFake] run summon armor_stand ~ ~ ~ {Tags:["headFake","modelFake","seenFake","herobrineFake"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Pose:{Head:[6f,9f,0f]},ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1b,tag:{CustomModelData:1}}]}
execute at @e[tag=spreadFake] run summon armor_stand ~ ~ ~ {HasVisualFire:1b,Tags:["eyesFake","modelFake","seenFake","herobrineFake"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Pose:{Head:[6f,9f,0f]},ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1b,tag:{CustomModelData:4}}]}
execute at @e[tag=spreadFake] run summon armor_stand ~ ~ ~ {Tags:["bodyFake","modelFake","seenFake","herobrineFake"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1b,tag:{CustomModelData:2}}],HandItems:[{id:"diamond_hoe",Count:1b,tag:{CustomModelData:3}},{id:"diamond_hoe",Count:1b,tag:{CustomModelData:3}}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}

execute as @e[tag=herobrineFake] run tp @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=bodyFake] arm_pos 1