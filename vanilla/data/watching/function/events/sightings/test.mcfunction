#removeOtherHerobrines
execute as @e[tag=herobrine] at @s run function watching:events/general/kill/kill

#summon
summon armor_stand ~ 0 ~ {Tags:["spread","model","lurking","herobrine"],Marker:0b,Invisible:1b,Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583,NoBasePlate:1b}

#stalkingPos
# execute as @e[tag=spread] at @s in minecraft:overworld run tp @s -2603.45 75.00 27378.49 
# execute as @e[tag=spread] at @s in minecraft:overworld run tp @s -2621.74 83.00 27404.82 -464.38 9.45
# execute as @e[tag=spread] at @s in minecraft:overworld run tp @s -2574.46 -17.00 27341.50 809.43 0.89
# execute as @e[tag=spread] at @s in minecraft:overworld run tp @s -2619.87 72.00 27358.56 -1252.57 3.18
# execute as @e[tag=spread] at @s in minecraft:overworld run tp @s -2613.53 80.00 27397.71 -534.15 12.19
# execute as @e[tag=spread] at @s in minecraft:overworld run tp @s -2675.39 78.00 27404.70 -539.24 1.28
# execute as @e[tag=spread] at @s in minecraft:overworld run tp @s -2565.50 77.00 27345.04 -1730.43 10.87
# execute as @e[tag=spread] at @s in minecraft:overworld run tp @s -2586.08 72.00 27354.47 -2069.60 0.72
# execute as @e[tag=spread] at @s in minecraft:overworld run tp @s -2736.14 72.00 27514.86 183.45 2.77
# execute as @e[tag=spread] at @s in minecraft:overworld run tp @s -2699.26 74.00 27483.14 -540.42 0.05
# execute as @e[tag=spread] at @s in minecraft:overworld run tp @s -2724.75 72.00 27493.57 1439.23 -6.81
# execute as @e[tag=spread] at @s in minecraft:overworld run tp @s -2770.51 73.00 27498.58 -0.39 0.21
execute as @e[tag=spread] at @s in minecraft:overworld run tp @s -2941.63 71.00 27522.48 -1888.89 0.01
execute as @e[type=armor_stand,tag=spread] at @s align xz run tp ~0.5 ~ ~0.5

#createModel
schedule function watching:events/sightings/setup/models 1s