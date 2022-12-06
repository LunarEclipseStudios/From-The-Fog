##door_open
effect give @s invisibility 1000000 1 true
effect give @s slow_falling 10000 1 true
#kill
scoreboard players add @s life 1
execute if score @s life matches 600.. run function watching:events/kill
execute unless block ~ ~ ~ #watching:spawn_blocks run schedule function watching:events/kill 7t append 
execute if block ~ ~ ~ #doors run schedule function watching:events/kill 7t append
