#noGlowstone
execute unless score true LBSpecialEvent1 matches 1 as @e[type=marker,tag=doorTrace,tag=logged] at @s unless entity @a[distance=..70,gamemode=!spectator] if block ~ ~-1 ~ grass_block run function watching:events/special/lb/no_glowstone
