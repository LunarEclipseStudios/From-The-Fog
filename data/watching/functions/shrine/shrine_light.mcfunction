
execute unless score true shrine_lit matches 1 run playsound watching:crash master @a ~ ~-10 ~ 0.2 1
execute unless score true shrine_lit matches 1 run playsound ambient.cave master @a ~ ~-10 ~ 0.2 1
execute unless score true shrine_lit matches 1 run execute if score true started matches 1 as @p at @s unless entity @e[tag=spread] unless entity @e[tag=door_open] run function watching:summon/summon


execute unless score true shrine_lit matches 1 run scoreboard players set true shrine_lit 1 

function watching:setup/begin