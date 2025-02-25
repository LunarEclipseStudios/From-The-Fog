#checkForShrine
execute if entity @s[tag=found] if block ~ ~-1 ~ netherrack if block ~ ~-2 ~ #watching:shrine_center if block ~1 ~-2 ~ gold_block if block ~-1 ~-2 ~ gold_block if block ~ ~-2 ~1 gold_block if block ~ ~-2 ~-1 gold_block if block ~1 ~-2 ~1 gold_block if block ~-1 ~-2 ~-1 gold_block if block ~1 ~-2 ~-1 gold_block if block ~-1 ~-2 ~1 gold_block if block ~1 ~-1 ~ redstone_torch if block ~-1 ~-1 ~ redstone_torch if block ~ ~-1 ~-1 redstone_torch if block ~ ~-1 ~1 redstone_torch run tag @s add onShrine
execute if entity @s[tag=found] if block ~ ~-1 ~ netherrack if block ~ ~-2 ~ netherrack if block ~ ~-3 ~ gold_block if block ~ ~-4 ~ gold_block run tag @s add onShrine

#foundAnotherMarker
execute if entity @e[type=marker,tag=fireTrace,tag=logged,distance=..1] run kill @e[type=marker,tag=fireTrace,tag=logged,sort=nearest,limit=1]

#noShrine
execute if entity @s[tag=!onShrine] run kill @s