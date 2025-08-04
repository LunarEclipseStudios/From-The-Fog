# List of variables used:
# "page" - The selected config page.

# Rotate the pivot correctly.
execute as @e[type=marker,tag=watching.pivot,distance=..15] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=watching.player_pivot,limit=1]

# Create the menu.
$execute as @e[type=marker,tag=watching.pivot,distance=..15] at @s run function lunareclipse.watching:config/main_menu/page {page:$(page)}