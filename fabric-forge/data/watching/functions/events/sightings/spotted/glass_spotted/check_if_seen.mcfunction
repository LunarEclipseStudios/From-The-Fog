
#grantAdvancement
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=herobrineModel,distance=..2.2] if entity @s[advancements={watching:main/root=true}] run advancement grant @s only watching:main/spotted_herobrine
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=herobrineModel,distance=..2.2] if entity @s[advancements={watching:main/root=true}] if score hittingThatGriddyConfig ftf.configOptions matches 1 run advancement grant @s only watching:main/herobrine_griddy
#logPlayerViewingHerobrine
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=spread,distance=..2.2] run scoreboard players set true ftf.playerViewingHerobrine 1
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=spread,distance=..2.2] run schedule function watching:events/general/scoreboards/player_viewing_herobrine_reset 5t
#checkIfHerobrineIsBeingViewed
execute positioned ~ ~-0.1 ~ if entity @e[type=armor_stand,tag=spread,distance=..2.2] run tag @e[type=armor_stand,tag=move] add glassSpotted
#raycast
execute if entity @s[tag=spottedThroughGlass] positioned ^ ^ ^0.5 if block ~ ~ ~ #watching:glass_sight_blocks run function watching:events/sightings/spotted/glass_spotted/check_if_seen