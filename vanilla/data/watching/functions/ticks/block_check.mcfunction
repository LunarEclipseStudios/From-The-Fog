execute if score @s blockCheckHeight matches 14.. run kill @s

execute if block ~ ~ ~ chest if predicate watching:chances/50 unless entity @a[distance=..5] run playsound block.chest.close block @a ~ ~ ~ 0.5

scoreboard players add @s blockCheckHeight 1
tp ~ ~-1 ~