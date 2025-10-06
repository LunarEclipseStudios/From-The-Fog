# Remove any other configs.
kill @e[type=#lunareclipse.watching:config,tag=watching.config]

# De-extend the player's reach.
execute as @a[tag=watching.opened_config] run attribute @s minecraft:entity_interaction_range modifier remove lunareclipse.watching:config

# Remove the open config tag from any player that has it.
tag @a remove watching.opened_config

# Clear the config page assembly scoreboard.
scoreboard players reset config_page_assembly watching.global_values

# Show some fancy particles.
particle minecraft:flash{color:[1.000,0.910,0.910,1.00]} ~ ~ ~ 1.5 1.5 1.5 1 1000 force @a