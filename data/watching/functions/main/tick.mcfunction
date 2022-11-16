#20tick
scoreboard players add watchingtick 20tick 1
execute if score watchingtick 20tick matches 20.. run function watching:20tick

##delay
execute unless score true started matches 1.. store result score day spawn_delay run time query day
execute unless score true started matches 1.. if score day spawn_delay >= number dayDelayConfig run function watching:setup/begin

#ticks
execute as @a at @s run function watching:ticks/everyone
execute as @e[tag=herobrine] at @s run function watching:ticks/herobrine
execute as @e[tag=herobrineFake] at @s run function watching:ticks/herobrine_fake
execute as @e[type=villager,tag=door_open] at @s run function watching:ticks/door_open
#execute as @e[tag=block_check] at @s run function watching:ticks/block_check
#execute as @e[type=marker,tag=leafless_grove_barrier] at @s run function watching:ticks/leafless_grove_barrier