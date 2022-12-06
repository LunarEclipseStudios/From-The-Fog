execute if score random block_breaking matches 1 run summon armor_stand ^4 ^ ^ {Tags:["mine_stone_block"],Small:1b,Silent:1b,Invisible:1b}
execute if score random block_breaking matches 2 run summon armor_stand ^-4 ^ ^ {Tags:["mine_stone_block"],Small:1b,Silent:1b,Invisible:1b}
execute if score random block_breaking matches 3 run summon armor_stand ^6 ^ ^ {Tags:["mine_stone_block"],Small:1b,Silent:1b,Invisible:1b}
execute if score random block_breaking matches 4 run summon armor_stand ^-6 ^ ^ {Tags:["mine_stone_block"],Small:1b,Silent:1b,Invisible:1b}
execute as @e[tag=mine_stone_block] at @s run execute unless block ~ ~ ~ #base_stone_overworld run kill @s
execute as @e[tag=mine_stone_block] at @s run execute unless block ~ ~1 ~ #base_stone_overworld run kill @s
execute as @e[tag=mine_stone_block] at @s run execute unless block ~ ~-1 ~ #base_stone_overworld run kill @s

execute as @e[tag=mine_stone_block] at @s run execute unless block ~-1 ~ ~ #base_stone_overworld run kill @s
execute as @e[tag=mine_stone_block] at @s run execute unless block ~1 ~ ~ #base_stone_overworld run kill @s
execute as @e[tag=mine_stone_block] at @s run execute unless block ~ ~ ~1 #base_stone_overworld run kill @s
execute as @e[tag=mine_stone_block] at @s run execute unless block ~ ~ ~-1 #base_stone_overworld run kill @s

execute as @e[tag=mine_stone_block] at @s run execute unless block ~-1 ~1 ~ #base_stone_overworld run kill @s
execute as @e[tag=mine_stone_block] at @s run execute unless block ~1 ~1 ~ #base_stone_overworld run kill @s
execute as @e[tag=mine_stone_block] at @s run execute unless block ~ ~1 ~1 #base_stone_overworld run kill @s
execute as @e[tag=mine_stone_block] at @s run execute unless block ~ ~1 ~-1 #base_stone_overworld run kill @s

scoreboard players add @e[tag=mine_stone_block] block_breaking 1

schedule function watching:sounds/mining_stone 4t append
schedule function watching:sounds/mining_stone 8t append
schedule function watching:sounds/mining_stone 12t append
schedule function watching:sounds/stone_break 14t append
execute as @e[tag=mine_stone_block] at @s if score @e[tag=mine_stone_block,limit=1] block_breaking matches 2.. run schedule function watching:sounds/place_torch 20t append

execute unless score @e[tag=mine_stone_block,limit=1] block_breaking matches 3.. run schedule function watching:sounds/mine_stone_block 24t

execute as @e[tag=mine_stone_block] at @s if score @e[tag=mine_stone_block,limit=1] block_breaking matches 3.. run function watching:events/block_breaking_end


