execute as @e[tag=door_open] at @s if block ~ ~ ~ #doors run playsound minecraft:ambient.cave master @a ~ ~-10 ~ 0.2 1
execute as @e[tag=door_open] at @s run tp @s ~ -256 ~
execute as @e[tag=door_open] at @s if predicate watching:chances/50 run function watching:summon/watching_summon
execute as @e[tag=door_open] at @s run schedule function watching:events/die 1s append
