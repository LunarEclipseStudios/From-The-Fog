#startDelay
execute unless score true startedEvents matches 1.. store result score day spawnDelay run time query day
execute unless score true startedEvents matches 1.. if score day spawnDelay >= number dayDelayConfig run function watching:events/start_events

#ticks
execute as @a at @s run function watching:main/ticks/everyone
execute as @e[type=armor_stand,tag=herobrine] at @s run function watching:main/ticks/herobrine
execute as @e[type=armor_stand,tag=herobrineFake] at @s run function watching:main/ticks/herobrine_fake
execute as @e[type=villager,tag=doorGhost] at @s run function watching:main/ticks/door_ghost
execute as @e[type=marker,tag=leaflessCheck,limit=1] at @s run function watching:main/ticks/leafless_check
