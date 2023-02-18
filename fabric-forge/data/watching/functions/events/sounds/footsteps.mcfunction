#summonFootstepsEmitter
summon marker ^ ^ ^-1 {Tags:["footstepsEmitter"]}
execute at @e[type=marker,tag=footstepsEmitter] run tp @e[type=marker,tag=footstepsEmitter] ~ ~ ~ facing entity @s

#playSound
execute if block ~ ~-1 ~ grass_block run function watching:events/sounds/footsteps/grass/step1
execute if block ~ ~-1 ~ dirt run function watching:events/sounds/footsteps/dirt/step1
execute if block ~ ~-1 ~ gravel run function watching:events/sounds/footsteps/dirt/step1
execute if block ~ ~-1 ~ #minecraft:base_stone_overworld run function watching:events/sounds/footsteps/stone/step1
execute if block ~ ~-1 ~ #minecraft:planks run function watching:events/sounds/footsteps/wood/step1