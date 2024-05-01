execute if score @s ftf.crash matches 1.. run scoreboard players add @s ftf.crash 1

execute if score jumpscareConfig ftf.configOptions matches 0 run kill @e[tag=spread,limit=1,sort=nearest]

execute if score jumpscareConfig ftf.configOptions matches 1 if score @s ftf.crash matches 2 run tp @s ~ ~ ~ facing entity @e[tag=move,limit=1,sort=nearest]
execute if score jumpscareConfig ftf.configOptions matches 1 if score @s ftf.crash matches 2 run tp @s @s
execute if score jumpscareConfig ftf.configOptions matches 1 if score @s ftf.crash matches 5 run kill @e[tag=spread,limit=1,sort=nearest]

execute if score @s ftf.crash matches 2 run function watching:events/sounds/spotted
execute if score jumpscareConfig ftf.configOptions matches 1 if score crashConfig ftf.configOptions matches 1 run title @s times 1 40 1
execute if score jumpscareConfig ftf.configOptions matches 1 if score crashConfig ftf.configOptions matches 1 if score @s ftf.crash matches 6 run playsound watching:event.crash master @s ~ ~ ~ 1.0 1.0 1.0
execute if score jumpscareConfig ftf.configOptions matches 1 if score crashConfig ftf.configOptions matches 1 if score @s ftf.crash matches 5 run title @s title {"text":"\uBC04","font":"watching:watching_ui"}
execute if score jumpscareConfig ftf.configOptions matches 1 if score crashConfig ftf.configOptions matches 1 if score @s ftf.crash matches 6 run particle ambient_entity_effect ~ ~ ~ 0 0 0 1 666666666 force @s

execute if score @s ftf.crash matches 8.. run scoreboard players reset @s ftf.crash

#grantAdvancement
execute if entity @s[advancements={watching:main/root=true}] run advancement grant @s only watching:main/jumpscared