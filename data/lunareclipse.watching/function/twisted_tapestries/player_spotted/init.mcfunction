# Reset the raycast scoreboard.
scoreboard players reset @s watching.painting_raycast

# If the player has a tapestry on screen, and it is within 60 blocks of the player then run the player spotted tick function.
execute \
unless entity @s[gamemode=spectator] \
if entity @e[type=painting,tag=watching.twisted_tapestry,distance=..60] \
anchored eyes \
facing entity @e[type=painting,tag=watching.twisted_tapestry,distance=..70] eyes \
anchored feet \
positioned ^ ^ ^1 \
rotated as @s \
positioned ^ ^ ^-1 \
if entity @s[distance=..0.70] \
anchored eyes \
facing entity @e[type=painting,tag=watching.twisted_tapestry] eyes \
positioned ^ ^ ^ \
run function lunareclipse.watching:twisted_tapestries/player_spotted/search