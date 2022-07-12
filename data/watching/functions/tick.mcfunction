#20tick
scoreboard players add watchingtick 20tick 1
execute if score watchingtick 20tick matches 20.. run function watching:20tick

##delay
execute unless score true started matches 1 run scoreboard players add timer spawn_delay 1
execute if score timer spawn_delay matches 36000.. run function watching:setup/begin

##animate
#head
execute as @e[tag=move,tag=seen] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator] 
execute as @e[tag=move,tag=seen] at @s store result entity @e[tag=head,tag=seen,limit=1,sort=nearest] Pose.Head[1] float 1 run data get entity @s Rotation[0] 1
execute as @e[tag=move,tag=seen] at @s store result entity @e[tag=head,tag=seen,limit=1,sort=nearest] Pose.Head[0] float 1 run data get entity @s Rotation[1] 1

execute as @e[tag=move,tag=seen] at @s store result entity @e[tag=eyes,tag=seen,limit=1,sort=nearest] Pose.Head[1] float 1 run data get entity @s Rotation[0] 1
execute as @e[tag=move,tag=seen] at @s store result entity @e[tag=eyes,tag=seen,limit=1,sort=nearest] Pose.Head[0] float 1 run data get entity @s Rotation[1] 1

#arms
execute as @e[tag=body,tag=arm_pos,tag=seen] run scoreboard players add @s arm_pos 1
execute as @e[tag=body,tag=!arm_pos,tag=seen] run scoreboard players remove @s arm_pos 1

execute as @e[tag=body,tag=seen,scores={arm_pos=0}] run tag @s add arm_pos
execute as @e[tag=body,tag=seen,scores={arm_pos=38..}] run tag @s remove arm_pos

execute as @e[tag=body,tag=seen] store result entity @s Pose.RightArm[2] float 0.16 run scoreboard players get @s arm_pos
execute as @e[tag=body,tag=seen] store result entity @s Pose.LeftArm[2] float -0.16 run scoreboard players get @s arm_pos

#ground_correction
execute as @e[tag=move,tag=seen] at @s run tp @e[tag=model,distance=0.1..] ~ ~ ~
execute as @e[tag=move,tag=seen] at @s if block ~ ~-0.1 ~ #watching:spawn_blocks positioned ~ ~-0.1 ~ run function watching:summon/ground_correction

##spotted
execute at @e[tag=spread] run tag @a[gamemode=!spectator,distance=..32] add sight

execute if entity @e[tag=spread,tag=above] as @a[gamemode=!spectator] at @s unless score @s crash matches 1.. anchored eyes facing entity @e[sort=nearest,limit=1,tag=spread] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=spread] eyes positioned ^ ^ ^ run function watching:events/sight
execute if entity @e[tag=spread,tag=!above] as @a[gamemode=!spectator] at @s unless score @s crash matches 1.. anchored eyes facing entity @e[sort=nearest,limit=1,tag=spread] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.85] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=spread] eyes positioned ^ ^ ^ run function watching:events/sight

##kill
#too_far
execute as @e[tag=spread,tag=above] at @s unless entity @a[distance=..32] run kill @s
execute as @e[tag=spread,tag=!above] at @s unless entity @a[distance=..16] run kill @s
execute as @e[tag=spread,tag=above] at @s unless entity @a[distance=..64] run kill @s
execute as @e[tag=spread,tag=!above] at @s unless entity @a[distance=..32] run kill @s

#30_sec
scoreboard players add @e[tag=spread,tag=!seen] life 1
execute as @e[tag=spread] at @s if score @s life matches 600.. run kill @s

#spotted
execute as @e[tag=move] at @s unless entity @e[tag=spread,distance=..2] run tp @s ~666 ~-666 ~666
execute as @e[tag=head] at @s unless entity @e[tag=spread,distance=..2] run kill @s
execute as @e[tag=eyes] at @s unless entity @e[tag=spread,distance=..2] run kill @s
execute as @e[tag=body] at @s unless entity @e[tag=spread,distance=..2] run kill @s

##crash
execute as @a[gamemode=!spectator] at @s unless score @s crash matches 1.. if entity @e[tag=spread,distance=..1.5] run scoreboard players add @s crash 1
execute as @a[scores={crash=1..}] at @s run function watching:events/crash

##shrine
execute as @a[scores={flint_and_steel=1..}] at @s anchored eyes run function watching:shrine/shrine_detect
execute as @a[scores={fire_charge=1..}] at @s anchored eyes run function watching:shrine/shrine_detect

##door_open
execute as @e[tag=door_open] at @s run effect give @s invisibility 1000000 1 true
execute as @e[tag=door_open] at @s run effect give @s slow_falling 10000 1 true
#kill
execute as @e[tag=door_open] at @s run scoreboard players add @s life 1
execute as @e[tag=door_open] at @s if score @s life matches 600.. run function watching:events/kill
execute as @e[tag=door_open] at @s unless block ~ ~ ~ #watching:spawn_blocks run schedule function watching:events/kill 7t append 
execute as @e[tag=door_open] at @s if block ~ ~ ~ #doors run schedule function watching:events/kill 7t append