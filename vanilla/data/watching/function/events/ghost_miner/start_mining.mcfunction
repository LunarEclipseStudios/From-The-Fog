#choosePos
execute unless score @s ftf.ghostMinerEvents matches 1.. if score randomPos ftf.ghostMinerEvents matches 1 run summon marker ^4 ^ ^ {Tags:["ghostMiner","herobrineEntity"]}
execute unless score @s ftf.ghostMinerEvents matches 1.. if score randomPos ftf.ghostMinerEvents matches 2 run summon marker ^-4 ^ ^ {Tags:["ghostMiner","herobrineEntity"]}
execute unless score @s ftf.ghostMinerEvents matches 1.. if score randomPos ftf.ghostMinerEvents matches 3 run summon marker ^6 ^ ^ {Tags:["ghostMiner","herobrineEntity"]}
execute unless score @s ftf.ghostMinerEvents matches 1.. if score randomPos ftf.ghostMinerEvents matches 4 run summon marker ^-6 ^ ^ {Tags:["ghostMiner","herobrineEntity"]}

#debugMode
execute unless score @s ftf.ghostMinerEvents matches 1.. if entity @e[type=marker,tag=ghostMiner] run tellraw @a[tag=debugMode] ["",{"text":"Attempted to place a ghost miner on ","color": "green"},{"selector":"@s","color": "green"},{"text":" at ","color": "gray"},{"nbt":"Pos","entity":"@e[tag=ghostMiner,limit=1]","color": "dark_green"}]

#continueEvents
execute as @e[type=marker,tag=ghostMiner] at @s run function watching:events/ghost_miner/continue_as_ghost_miner

