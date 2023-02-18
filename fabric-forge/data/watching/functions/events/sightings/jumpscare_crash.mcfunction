execute if score @s crash matches 1.. run scoreboard players add @s crash 1

execute if score true jumpscareConfig matches 0 run kill @e[tag=spread,limit=1,sort=nearest]

execute if score true jumpscareConfig matches 1 if score @s crash matches 2 run tp @s ~ ~ ~ facing entity @e[tag=move,limit=1,sort=nearest]
execute if score true jumpscareConfig matches 1 if score @s crash matches 4 run kill @e[tag=spread,limit=1,sort=nearest]

execute if score true jumpscareConfig matches 1 if score @s crash matches 2 run playsound watching:crash master @s ~ ~ ~ 1 1
execute if score @s crash matches 2 run function watching:events/sounds/spotted
execute if score true jumpscareConfig matches 1 if score true crashConfig matches 1 if score @s crash matches 6 run playsound watching:event.crash master @s ~ ~ ~ 1.0 1.0 1.0
execute if score true jumpscareConfig matches 1 if score true crashConfig matches 1 if score @s crash matches 6 run particle ambient_entity_effect ~ ~ ~ 0 0 0 1 666666666 force @s

execute if score @s crash matches 8.. run scoreboard players reset @s crash
