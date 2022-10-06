##summon
summon armor_stand ~ 0 ~ {Tags:["spread","model"],Marker:0b,Invisible:1b,Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583}

execute positioned ~ ~1 ~ run function watching:summon/height_check

execute as @e[tag=spread] in minecraft:the_nether if entity @e[tag=spread,distance=0..] run tag @s add above

execute if entity @e[tag=spread,tag=above] run function watching:summon/spread_above
execute if entity @e[tag=spread,tag=!above] run function watching:summon/spread_below

execute as @e[tag=spread] run data merge entity @s {NoGravity:1b}

execute as @e[tag=spread,tag=above] at @s unless entity @a[distance=0.1..32] run kill @s
execute as @e[tag=spread,tag=!above] at @s unless entity @a[distance=0.1..16] run kill @s

#execute at @e[tag=spread] run summon minecraft:wandering_trader ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Willing:0b,DespawnDelay:2147483647,Tags:["move","seen"],Offers:{},Attributes:[{Name:generic.movement_speed,Base:2.0},{Name:"generic.follow_range",Base:64.0F}]}
execute at @e[tag=spread] run summon minecraft:illusioner ~ ~ ~ {Tags:["move","seen"],NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Willing:0b,DespawnDelay:2147483647,Offers:{},Attributes:[{Name:generic.movement_speed,Base:2.0},{Name:"generic.follow_range",Base:64.0F}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]} 
execute at @e[tag=spread] run summon armor_stand ~ ~ ~ {Tags:["head","model","seen"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Pose:{Head:[6f,9f,0f]},ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1b,tag:{CustomModelData:1}}]}
execute at @e[tag=spread] run summon armor_stand ~ ~ ~ {Tags:["eyes","model","seen"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Pose:{Head:[6f,9f,0f]},ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1b,tag:{CustomModelData:4}}]}
execute at @e[tag=spread] run summon armor_stand ~ ~ ~ {Tags:["body","model","seen"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1b,tag:{CustomModelData:2}}],HandItems:[{id:"diamond_hoe",Count:1b,tag:{CustomModelData:3}},{id:"diamond_hoe",Count:1b,tag:{CustomModelData:3}}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}

execute as @e[tag=body] at @s run tp @s ~ ~ ~ facing entity @p
scoreboard players set @e[tag=body] arm_pos 1