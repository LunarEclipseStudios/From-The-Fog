# # Inform the user that another config is open if there is already one.
# execute if entity @e[type=marker,tag=watching.config] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5 1
# execute if entity @e[type=marker,tag=watching.config] run return run tellraw @s ["",{"translate":"config.text.prevent_open","color":"red"}]

# Remove any other configs. - Failsafe.
kill @e[type=#lunareclipse.watching:config,tag=watching.config]
# Remove the tag from all other users.  - Failsafe.
tag @s remove watching.opened_config

# Give the player the correct tag.
tag @s add watching.opened_config

# Extend the player's reach.
attribute @s minecraft:entity_interaction_range modifier add lunareclipse.watching:config 3 add_value

# Summon the pivot point of the menu.
execute positioned ^ ^1 ^3 align y run summon marker ~ ~ ~ {Tags:["watching.config", "watching.pivot"]}

# Summon the player's location.
summon marker ~ ~ ~ {Tags:["watching.config", "watching.player_pivot"]}

# If there is a block two blocks down ground correct the config.
execute as @e[type=marker,tag=watching.pivot] at @s unless block ~ ~-2 ~ #lunareclipse.watching:ground_correction/no_col_blocks run tp @s ~ ~-1 ~
execute as @e[type=marker,tag=watching.pivot] at @s unless block ~ ~-3 ~ #lunareclipse.watching:ground_correction/no_col_blocks run tp @s ~ ~-2 ~

# If the config spawns in blocks move it up one. - Runs five times in case it's five blocks too low. - I hate this.
execute as @e[type=marker,tag=watching.pivot] at @s unless block ~ ~ ~ #lunareclipse.watching:ground_correction/no_col_blocks run tp @s ~ ~1 ~
execute as @e[type=marker,tag=watching.pivot] at @s unless block ~ ~ ~ #lunareclipse.watching:ground_correction/no_col_blocks run tp @s ~ ~1 ~
execute as @e[type=marker,tag=watching.pivot] at @s unless block ~ ~ ~ #lunareclipse.watching:ground_correction/no_col_blocks run tp @s ~ ~1 ~
execute as @e[type=marker,tag=watching.pivot] at @s unless block ~ ~ ~ #lunareclipse.watching:ground_correction/no_col_blocks run tp @s ~ ~1 ~
execute as @e[type=marker,tag=watching.pivot] at @s unless block ~ ~ ~ #lunareclipse.watching:ground_correction/no_col_blocks run tp @s ~ ~1 ~

# Open the first page of the config.
execute as @e[type=marker,tag=watching.pivot,distance=..15] at @s run function lunareclipse.watching:config/main_menu/open_page {page:1}

# Play a fancy sound.
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1