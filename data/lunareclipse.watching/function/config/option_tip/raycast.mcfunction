# Check for the icon.
execute as @e[type=interaction,tag=watching.tip_activated,distance=..1,sort=nearest,limit=1] at @s as @e[type=minecraft:item_display,tag=watching.tip_activated,sort=nearest,limit=1] at @s run return run function lunareclipse.watching:config/option_tip/found_icon

# Move forward 0.5 blocks and rerun. (Cut off the loop if it goes outside of 7 blocks of the player.)
execute positioned ^ ^ ^0.5 if entity @s[distance=..7] run function lunareclipse.watching:config/option_tip/raycast