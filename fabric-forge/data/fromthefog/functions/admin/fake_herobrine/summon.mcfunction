##summon
summon armor_stand ~ ~ ~ {Tags:["spreadFake","model","herobrineFake"],Marker:0b,Invisible:1b,Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583}

execute at @e[tag=spreadFake] run summon minecraft:armor_stand ~ ~ ~ {Tags:["moveFake","seenFake","herobrineFake"],Invisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b} 
execute at @e[tag=spreadFake] run summon armor_stand ~ ~ ~ {Tags:["headFake","modelFake","seenFake","herobrineFake"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Pose:{Head:[6f,9f,0f]},ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1b,tag:{CustomModelData:1}}]}
execute if score true glowingEyesConfig matches 1 at @e[tag=spreadFake] run summon armor_stand ~ ~ ~ {HasVisualFire:1b,Tags:["eyesFake","modelFake","seenFake","herobrineFake"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Pose:{Head:[6f,9f,0f]},ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1b,tag:{CustomModelData:2}}]}
execute if score true glowingEyesConfig matches 0 at @e[tag=spreadFake] run summon armor_stand ~ ~ ~ {HasVisualFire:0b,Tags:["eyesFake","modelFake","seenFake","herobrineFake"],Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Pose:{Head:[6f,9f,0f]},ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1b,tag:{CustomModelData:2}}]}
execute at @e[tag=spreadFake] run summon armor_stand ~ ~ ~ {Tags:["bodyFake","modelFake","seenFake","herobrineFake"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1b,tag:{CustomModelData:3}}],HandItems:[{id:"diamond_hoe",Count:1b,tag:{CustomModelData:5}},{id:"diamond_hoe",Count:1b,tag:{CustomModelData:4}}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}

execute as @e[tag=herobrineFake] run tp @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=bodyFake] arm_pos 1