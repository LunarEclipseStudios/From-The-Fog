fill ~-48 ~ ~-48 ~48 ~ ~48 air replace barrier
tag @s add startedMoving
execute if score @s blockCheckHeight matches 320..322 run tp ~ 320 ~
execute if score @s blockCheckHeight matches 642.. run kill @s

scoreboard players add @s blockCheckHeight 1
tp ~ ~-1 ~

