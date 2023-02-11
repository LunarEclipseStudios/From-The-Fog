scoreboard players add @a[scores={crash=1..}] crash 1

execute if score @s crash matches 2 run tp @s ~ ~ ~ facing entity @e[tag=move,limit=1,sort=nearest]
execute if score @s crash matches 4 run kill @e[tag=spread,limit=1,sort=nearest]

execute if score @s crash matches 2 run playsound watching:crash master @s ~ ~ ~ 1 1
execute if score @s crash matches 2 run playsound ambient.cave master @a ~ ~-10 ~ 1 1 0
execute if score true crashConfig matches 1 if score @s crash matches 6 run particle ambient_entity_effect ~ ~ ~ 0 0 0 1 666666666 force @s


scoreboard players reset @a[scores={crash=8..}] crash
