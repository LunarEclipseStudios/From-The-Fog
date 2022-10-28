
##spotted
execute as @a at @s if predicate watching:checks/spotted_check run kill @e[tag=spread]

execute unless entity @e[tag=watching] if entity @e[tag=spread,tag=above,tag=!watching] as @s[gamemode=!spectator] at @s unless score @s crash matches 1.. anchored eyes facing entity @e[sort=nearest,limit=1,tag=spread,tag=!watching] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=spread,tag=!watching] eyes positioned ^ ^ ^ run function watching:events/sight
execute unless entity @e[tag=watching] if entity @e[tag=spread,tag=!above,tag=!watching] as @s[gamemode=!spectator] at @s unless score @s crash matches 1.. anchored eyes facing entity @e[sort=nearest,limit=1,tag=spread,tag=!watching] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.85] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=spread,tag=!watching] eyes positioned ^ ^ ^ run function watching:events/sight

#watching_spotted
execute if entity @e[tag=spread,tag=watching] as @s[gamemode=!spectator] at @s unless score @s crash matches 1.. anchored eyes facing entity @e[sort=nearest,limit=1,tag=spread,tag=watching] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=spread,tag=watching] eyes positioned ^ ^ ^ run function watching:events/sight_watching
execute if entity @e[tag=spread,tag=watching] as @s[gamemode=!spectator] at @s unless score @s crash matches 1.. anchored eyes facing entity @e[sort=nearest,limit=1,tag=spread,tag=watching] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] at @s anchored feet facing entity @e[sort=nearest,limit=1,tag=spread,tag=watching] eyes positioned ^ ^ ^ run function watching:events/sight_watching
execute if entity @e[tag=spread,tag=watching] as @s[gamemode=!spectator] at @s unless score @s crash matches 1.. anchored eyes facing entity @e[sort=nearest,limit=1,tag=spread,tag=watching] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=spread,tag=watching] feet positioned ^ ^ ^ run function watching:events/sight_watching
execute if entity @e[tag=spread,tag=watching] as @s[gamemode=!spectator] at @s unless score @s crash matches 1.. anchored eyes facing entity @e[sort=nearest,limit=1,tag=spread,tag=watching] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=spread,tag=watching] eyes positioned ^ ^ ^ run function watching:events/sight_watching

##disappearing_torch
execute if score @s torch_placed matches 1.. run function watching:log/torch_placed


##crash
execute if score @s crash matches 1 unless entity @e[tag=spread,distance=..1.5] run scoreboard players reset @s crash
execute as @s[scores={crash=1..}] at @s run function watching:events/crash
execute as @s[gamemode=!spectator] at @s unless score @s crash matches 1.. if entity @e[tag=spread,distance=..1.5] run scoreboard players add @s crash 1

##shrine
execute as @s[scores={flint_and_steel=1..}] at @s anchored eyes run function watching:shrine/shrine_detect
execute as @s[scores={fire_charge=1..}] at @s anchored eyes run function watching:shrine/shrine_detect
