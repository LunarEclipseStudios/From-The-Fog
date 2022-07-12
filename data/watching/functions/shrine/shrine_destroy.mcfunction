execute unless block ~ ~ ~ fire run kill @s
execute unless block ~ ~-1 ~ netherrack run kill @s
execute unless block ~ ~-1 ~-1 redstone_torch run kill @s
execute unless block ~1 ~-1 ~ redstone_torch run kill @s
execute unless block ~ ~-1 ~1 redstone_torch run kill @s
execute unless block ~-1 ~-1 ~ redstone_torch run kill @s
execute unless block ~-1 ~-2 ~-1 gold_block run kill @s
execute unless block ~ ~-2 ~-1 gold_block run kill @s
execute unless block ~1 ~-2 ~-1 gold_block run kill @s
execute unless block ~-1 ~-2 ~ gold_block run kill @s
execute unless block ~ ~-2 ~ mossy_cobblestone run kill @s
execute unless block ~1 ~-2 ~ gold_block run kill @s
execute unless block ~-1 ~-2 ~1 gold_block run kill @s
execute unless block ~ ~-2 ~1 gold_block run kill @s
execute unless block ~1 ~-2 ~1 gold_block run kill @s

execute unless entity @e[tag=shrine] run scoreboard players reset true shrine_lit
execute unless entity @e[tag=shrine] if block ~ ~ ~ fire run playsound minecraft:block.fire.extinguish block @a[distance=..10] ~ ~ ~ 1 2
execute unless entity @e[tag=shrine] run fill ~ ~ ~ ~ ~ ~ air replace fire