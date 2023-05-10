execute if entity @s[tag=doorTrace] unless block ~ ~ ~ #doors run function watching:events/general/kill/kill_trace_marker
execute if entity @s[tag=torchTrace] unless block ~ ~ ~ #watching:torches run function watching:events/general/kill/kill_trace_marker
execute if entity @s[tag=bedTrace] unless block ~ ~ ~ #beds run function watching:events/general/kill/kill_trace_marker
execute if entity @s[tag=chestTrace] unless block ~ ~ ~ chest run function watching:events/general/kill/kill_trace_marker
execute if entity @s[tag=lanternTrace] unless block ~ ~ ~ lantern run function watching:events/general/kill/kill_trace_marker
execute if entity @s[tag=candleTrace] unless block ~ ~ ~ #candles run function watching:events/general/kill/kill_trace_marker
execute if entity @s[tag=fireTrace] unless block ~ ~-1 ~ netherrack run function watching:events/general/kill/kill_trace_marker
execute if entity @s[tag=ghostMinerTorch] unless block ~ ~ ~ redstone_torch run function watching:events/advancements/grant_take_gm_torch

execute if entity @s[tag=fireTrace] if block ~ ~-1 ~ netherrack if block ~ ~-2 ~ #watching:shrine_center if block ~1 ~-2 ~ gold_block if block ~-1 ~-2 ~ gold_block if block ~ ~-2 ~1 gold_block if block ~ ~-2 ~-1 gold_block if block ~1 ~-2 ~1 gold_block if block ~-1 ~-2 ~-1 gold_block if block ~1 ~-2 ~-1 gold_block if block ~-1 ~-2 ~1 gold_block if block ~1 ~-1 ~ redstone_torch if block ~-1 ~-1 ~ redstone_torch if block ~ ~-1 ~-1 redstone_torch if block ~ ~-1 ~1 redstone_torch run tag @s add onShrine
execute if entity @s[tag=fireTrace] if block ~ ~-1 ~ netherrack if block ~ ~-2 ~ netherrack if block ~ ~-3 ~ gold_block if block ~ ~-4 ~ gold_block run tag @s add onShrine
execute if entity @s[tag=fireTrace,tag=!onShrine] run kill @s