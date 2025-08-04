# If the scoreboard exceeds the limit then stop the loop.
execute if score @s watching.painting_raycast matches 256.. run return 0

# Increment the raycast scoreboard.
scoreboard players add @s watching.painting_raycast 1

# If the raycast finds a twisted tapestry then we should change it back to a normal painting.
execute positioned ~ ~-0.1 ~ as @e[type=painting,tag=watching.twisted_tapestry,distance=..2.2] at @s run function lunareclipse.watching:twisted_tapestries/change_painting/remove

# If the current block that is being checked is air then run sighting tick again to iterate forward another block.
execute positioned ^ ^ ^0.5 if block ~ ~ ~ #lunareclipse.watching:player_spotted/sight_blocks run function lunareclipse.watching:twisted_tapestries/player_spotted/search