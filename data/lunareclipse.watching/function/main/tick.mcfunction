# Create the ticking function for Herobrine.
execute as @e[type=#lunareclipse.watching:herobrine,tag=watching.herobrine] at @s run function lunareclipse.watching:main/entity_ticks/herobrine
# Create a ticking function for all the players in the world.
execute as @a at @s run function lunareclipse.watching:main/entity_ticks/player
# Create a ticking function for all the tamed dogs in the world.
execute if data storage lunareclipse.watching:config_options {options:{sighting_sense:"true"}} as @e[type=wolf] at @s if data entity @s Owner if data storage lunareclipse.watching:global_values {sightings:{sighting_sense:"true"}} run function lunareclipse.watching:main/entity_ticks/wolf
# Create a ticking function for the door ghost.
execute as @e[type=minecraft:villager,tag=watching.door_ghost] at @s run function lunareclipse.watching:main/entity_ticks/door_ghost

# Remove the config if a player gets too far.
execute as @e[type=marker,tag=watching.pivot] at @s unless entity @a[tag=watching.opened_config,distance=..10] run function lunareclipse.watching:config/close_config

# This command is used to define structures while assembling them.
# /summon minecraft:marker ~ ~ ~ {Tags:["watching.structure","watching.mossy_pyramid"],data:{structure:"mossy_pyramid"}}
# Save the location of any structures.
execute as @e[type=marker,tag=watching.structure,tag=!watching.center] at @s run function lunareclipse.watching:structures/remove_base/start with entity @s data

# Make the skin display in the config spin.
execute if data storage lunareclipse.watching:config_options {config:{preview_spinning:"true"}} as @e[type=minecraft:armor_stand,tag=watching.preview_skin_pivot] at @s run tp @s ~ ~ ~ ~2 ~