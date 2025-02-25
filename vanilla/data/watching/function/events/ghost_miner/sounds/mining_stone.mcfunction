execute as @e[type=marker,tag=ghostMiner] at @s run playsound minecraft:block.stone.hit block @a ~ ~ ~ 0.5 0.5

#grantAdvancement
execute as @e[type=marker,tag=ghostMiner] at @s as @a[distance=..8] if entity @s[advancements={watching:main/root=true,watching:main/ghost_miner=false}] run advancement grant @s only watching:main/ghost_miner