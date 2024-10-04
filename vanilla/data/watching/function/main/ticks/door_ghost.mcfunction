#entitySetup
effect give @s invisibility 1000000 1 true
effect give @s slow_falling 10000 1 true

#removeEntity
scoreboard players add @s ftf.lifeLimit 1
execute if score @s ftf.lifeLimit matches 600.. run tellraw @a[tag=debugMode] ["",{"text":"Door ghost despawned at ","color": "gray"},{"nbt":"Pos","entity":"@s","color": "dark_gray"}]
execute if score @s ftf.lifeLimit matches 600.. run function watching:events/general/kill/kill
execute if block ~ ~ ~ #doors run schedule function watching:events/door_open/open_door 1t

#joinTeam
execute unless entity @s[team=nocol] run team join nocol