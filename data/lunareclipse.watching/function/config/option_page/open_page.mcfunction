# List of variables used:
# "option" - The option page being opened.

# Rotate the pivot correctly.
execute as @e[type=marker,tag=watching.pivot,distance=..15] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=watching.player_pivot,limit=1]

# Create the menu.
$execute as @e[type=marker,tag=watching.pivot,distance=..15] at @s run function lunareclipse.watching:config/option_page/page {option:"$(option)"}