#clearRaycastScoreboard
scoreboard players reset @s ftf.raycastLimit

#findShrine
execute as @e[type=marker,tag=fireTrace,tag=!logged,sort=nearest,limit=1] at @s run function watching:events/block_detection/technical/placed_fire/log_marker

#foundShrine
execute at @e[type=marker,tag=fireTrace,tag=onShrine,tag=!logged,sort=nearest,limit=1] at @s run function watching:events/block_detection/technical/placed_fire/found_shrine