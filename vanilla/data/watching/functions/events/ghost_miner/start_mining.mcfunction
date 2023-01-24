#choosePos
execute if score randomPos ghostMinerEvents matches 1 run summon marker ^4 ^ ^ {Tags:["ghostMiner"]}
execute if score randomPos ghostMinerEvents matches 2 run summon marker ^-4 ^ ^ {Tags:["ghostMiner"]}
execute if score randomPos ghostMinerEvents matches 3 run summon marker ^6 ^ ^ {Tags:["ghostMiner"]}
execute if score randomPos ghostMinerEvents matches 4 run summon marker ^-6 ^ ^ {Tags:["ghostMiner"]}

#continueEvents
execute as @e[type=marker,tag=ghostMiner] at @s run function watching:events/ghost_miner/continue_as_ghost_miner