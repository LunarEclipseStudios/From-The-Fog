execute if block ~ ~ ~ fire align xyz if block ~ ~-1 ~ netherrack if block ~ ~-1 ~-1 redstone_torch if block ~1 ~-1 ~ redstone_torch if block ~ ~-1 ~1 redstone_torch if block ~-1 ~-1 ~ redstone_torch if block ~-1 ~-2 ~-1 gold_block if block ~ ~-2 ~-1 gold_block if block ~1 ~-2 ~-1 gold_block if block ~-1 ~-2 ~ gold_block if block ~ ~-2 ~ mossy_cobblestone if block ~1 ~-2 ~ gold_block if block ~-1 ~-2 ~1 gold_block if block ~ ~-2 ~1 gold_block if block ~1 ~-2 ~1 gold_block align xyz positioned ~0.5 ~ ~0.5 run function watching:shrine/shrine_light
execute if block ~ ~ ~ fire align xyz if block ~ ~-1 ~ netherrack if block ~ ~-1 ~-1 redstone_torch if block ~1 ~-1 ~ redstone_torch if block ~ ~-1 ~1 redstone_torch if block ~-1 ~-1 ~ redstone_torch if block ~-1 ~-2 ~-1 gold_block if block ~ ~-2 ~-1 gold_block if block ~1 ~-2 ~-1 gold_block if block ~-1 ~-2 ~ gold_block if block ~ ~-2 ~ gold_block if block ~1 ~-2 ~ gold_block if block ~-1 ~-2 ~1 gold_block if block ~ ~-2 ~1 gold_block if block ~1 ~-2 ~1 gold_block align xyz positioned ~0.5 ~ ~0.5 run function watching:shrine/shrine_light


execute if block ~ ~ ~ air positioned ^ ^ ^0.1 run function watching:shrine/shrine_detect
execute if block ~ ~ ~ redstone_torch positioned ^ ^ ^0.1 run function watching:shrine/shrine_detect

scoreboard players set @a[scores={flint_and_steel=1..}] flint_and_steel 0
scoreboard players set @a[scores={fire_charge=1..}] fire_charge 0