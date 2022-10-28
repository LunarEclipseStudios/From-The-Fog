##animate
#head
execute as @s[tag=move,tag=seen] run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator] 
execute as @s[tag=move,tag=seen] store result entity @e[tag=head,tag=seen,limit=1,sort=nearest] Pose.Head[1] float 1 run data get entity @s Rotation[0] 1
execute as @s[tag=move,tag=seen] store result entity @e[tag=head,tag=seen,limit=1,sort=nearest] Pose.Head[0] float 1 run data get entity @s Rotation[1] 1

execute as @s[tag=move,tag=seen] store result entity @e[tag=eyes,tag=seen,limit=1,sort=nearest] Pose.Head[1] float 1 run data get entity @s Rotation[0] 1
execute as @s[tag=move,tag=seen] store result entity @e[tag=eyes,tag=seen,limit=1,sort=nearest] Pose.Head[0] float 1 run data get entity @s Rotation[1] 1

#arms
execute as @s[tag=body,tag=arm_pos,tag=seen] run scoreboard players add @s arm_pos 1
execute as @s[tag=body,tag=!arm_pos,tag=seen] run scoreboard players remove @s arm_pos 1

execute as @s[tag=body,tag=seen,scores={arm_pos=0}] run tag @s add arm_pos
execute as @s[tag=body,tag=seen,scores={arm_pos=38..}] run tag @s remove arm_pos

execute as @s[tag=body,tag=seen] store result entity @s Pose.RightArm[2] float 0.16 run scoreboard players get @s arm_pos
execute as @s[tag=body,tag=seen] store result entity @s Pose.LeftArm[2] float -0.16 run scoreboard players get @s arm_pos

#ground_correction
execute as @s[tag=move,tag=seen] run tp @e[tag=model,distance=0.1..] ~ ~ ~
execute as @s[tag=move,tag=seen] if block ~ ~-0.1 ~ #watching:spawn_blocks positioned ~ ~-0.1 ~ run function watching:summon/ground_correction
execute as @s[tag=move,tag=seen] if block ~ ~1 ~ #minecraft:leaves run kill @e[tag=spread]

##spotted
tag @a[gamemode=!spectator,distance=..32] add sight

#watching_spotted
execute as @s[tag=spread,tag=watching] if entity @a[distance=..20,gamemode=!spectator] run kill @s

##kill
#too_far
execute as @s[tag=spread,tag=above,tag=!watching] at @s unless entity @a[distance=..32] run kill @s
execute as @s[tag=spread,tag=!above,tag=!watching] at @s unless entity @a[distance=..16] run kill @s
execute as @s[tag=spread,tag=above,tag=!watching] at @s unless entity @a[distance=..64] run kill @s
execute as @s[tag=spread,tag=!above,tag=!watching] at @s unless entity @a[distance=..32] run kill @s

#too_far_watching
execute as @s[tag=spread,tag=above,tag=watching] at @s unless entity @a[distance=..50] run kill @s
execute as @s[tag=spread,tag=!above,tag=watching] at @s unless entity @a[distance=..50] run kill @s

#30_sec
scoreboard players add @s[tag=spread,tag=!seen] life 1
execute as @s[tag=spread] at @s if score @s life matches 600.. run kill @s

#spotted
execute as @s[tag=move] at @s unless entity @e[tag=spread,distance=..3] run tp @s ~666 ~-666 ~666
execute as @s[tag=head] at @s unless entity @e[tag=spread,distance=..2] run kill @s
execute as @s[tag=eyes] at @s unless entity @e[tag=spread,distance=..2] run kill @s
execute as @s[tag=body] at @s unless entity @e[tag=spread,distance=..2] run kill @s

#moveSetup
execute if entity @s[tag=move] run effect give @s invisibility 4 1 true