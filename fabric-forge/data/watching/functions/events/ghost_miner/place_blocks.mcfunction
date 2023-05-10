fill ~ ~ ~ ~ ~1 ~ air
setblock ~ ~ ~ redstone_torch
summon marker ~ ~ ~ {Tags:["ghostMinerTorch","logged"]}
execute if predicate watching:chances/number/50 run function watching:events/sounds/ambient
kill @s
schedule clear watching:events/ghost_miner/start_mining