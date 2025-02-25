#slipBehindBlock
execute anchored eyes unless block ^-1 ^ ^1 #watching:glass_sight_blocks if block ^-1 ^ ^ #watching:glass_sight_blocks run tag @s add moveRight
execute unless entity @s[tag=moveRight] anchored eyes unless block ^1 ^ ^1 #watching:glass_sight_blocks if block ^1 ^ ^ #watching:glass_sight_blocks run tag @s add moveLeft
execute anchored eyes unless block ^-1 ^ ^1 #watching:glass_sight_blocks if block ^-1 ^ ^ #watching:glass_sight_blocks run tag @s add ableToSlip
execute anchored eyes unless block ^1 ^ ^1 #watching:glass_sight_blocks if block ^1 ^ ^ #watching:glass_sight_blocks run tag @s add ableToSlip
execute anchored eyes if block ^1 ^ ^1 #watching:glass_sight_blocks if block ^-1 ^ ^1 #watching:glass_sight_blocks run tag @s remove ableToSlip
execute anchored eyes unless block ^1 ^ ^ #watching:glass_sight_blocks unless block ^-1 ^ ^ #watching:glass_sight_blocks run tag @s remove ableToSlip
execute if entity @s[tag=ableToSlip] run tag @e[type=armor_stand,tag=secondaryRotate] add pauseRot
execute if entity @s[tag=moveRight] as @e[type=armor_stand,tag=secondaryRotate] at @s run tp @s ~ ~ ~ ~45 ~
execute if entity @s[tag=moveLeft] as @e[type=armor_stand,tag=secondaryRotate] at @s run tp @s ~ ~ ~ ~-45 ~
execute if entity @s[tag=ableToSlip] run tag @e[type=armor_stand,tag=legs] add walking

#disappearAllow
execute unless entity @s[tag=ableToSlip] unless entity @s[tag=turnAround] run tag @s add disappear

#vanish
execute if entity @s[tag=disappear] if score creepingVanishingDelayConfig ftf.configOptions matches 0 run function watching:events/general/kill/kill_spread_entity
execute if entity @s[tag=disappear] if score creepingVanishingDelayConfig ftf.configOptions matches 1 run schedule function watching:events/general/kill/kill_spread_entity 0.5s
execute if entity @s[tag=disappear] if score creepingVanishingDelayConfig ftf.configOptions matches 2 run schedule function watching:events/general/kill/kill_spread_entity 1s
execute if entity @s[tag=disappear] if score creepingVanishingDelayConfig ftf.configOptions matches 3 run schedule function watching:events/general/kill/kill_spread_entity 1.5s
execute if entity @s[tag=disappear] if score creepingVanishingDelayConfig ftf.configOptions matches 4 run schedule function watching:events/general/kill/kill_spread_entity 2s

