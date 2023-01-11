##delay
execute unless score true started matches 1.. store result score day spawn_delay run time query day
execute unless score true started matches 1.. if score day spawn_delay >= number dayDelayConfig run function watching:setup/begin

#ticks
execute as @a at @s run function watching:ticks/everyone
execute as @e[tag=herobrine] at @s run function watching:ticks/herobrine
execute as @e[tag=herobrineFake] at @s run function watching:ticks/herobrine_fake
execute as @e[type=villager,tag=door_open] at @s run function watching:ticks/door_open