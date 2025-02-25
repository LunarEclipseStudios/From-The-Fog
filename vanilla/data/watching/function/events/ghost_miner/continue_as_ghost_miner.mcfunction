
#solidStoneCheck
execute unless block ~ ~ ~ #base_stone_overworld run tag @s add markedForDeath
execute unless block ~ ~1 ~ #base_stone_overworld run tag @s add markedForDeath
execute unless block ~ ~-1 ~ #base_stone_overworld run tag @s add markedForDeath
execute unless block ~-1 ~ ~ #base_stone_overworld run tag @s add markedForDeath
execute unless block ~1 ~ ~ #base_stone_overworld run tag @s add markedForDeath
execute unless block ~ ~ ~1 #base_stone_overworld run tag @s add markedForDeath
execute unless block ~ ~ ~-1 #base_stone_overworld run tag @s add markedForDeath
execute unless block ~-1 ~1 ~ #base_stone_overworld run tag @s add markedForDeath
execute unless block ~1 ~1 ~ #base_stone_overworld run tag @s add markedForDeath
execute unless block ~ ~1 ~1 #base_stone_overworld run tag @s add markedForDeath
execute unless block ~ ~1 ~-1 #base_stone_overworld run tag @s add markedForDeath

#beginBreaking
scoreboard players add @s ftf.ghostMinerEvents 1

#killEntity
execute if entity @s[tag=markedForDeath] run scoreboard players reset @s
execute if entity @s[tag=markedForDeath] run kill @s

#timeEvents
execute unless block ~ ~ ~ deepslate run schedule function watching:events/ghost_miner/sounds/mining_stone 4t append
execute unless block ~ ~ ~ deepslate run schedule function watching:events/ghost_miner/sounds/mining_stone 8t append
execute unless block ~ ~ ~ deepslate run schedule function watching:events/ghost_miner/sounds/mining_stone 12t append
execute unless block ~ ~ ~ deepslate run schedule function watching:events/ghost_miner/sounds/stone_break 14t append
execute if block ~ ~ ~ deepslate run schedule function watching:events/ghost_miner/sounds/mining_deepslate 4t append
execute if block ~ ~ ~ deepslate run schedule function watching:events/ghost_miner/sounds/mining_deepslate 8t append
execute if block ~ ~ ~ deepslate run schedule function watching:events/ghost_miner/sounds/mining_deepslate 12t append
execute if block ~ ~ ~ deepslate run schedule function watching:events/ghost_miner/sounds/deepslate_break 14t append
execute if score @s ftf.ghostMinerEvents matches 2.. run schedule function watching:events/ghost_miner/sounds/place_torch 20t append

execute if score @s ftf.ghostMinerEvents matches 3.. run function watching:events/ghost_miner/place_blocks

execute unless score @s ftf.ghostMinerEvents matches 3.. run schedule function watching:events/ghost_miner/start_mining 24t

