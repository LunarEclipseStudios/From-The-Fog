# Revoke the advancement from the player.
advancement revoke @s only lunareclipse.watching:config/clicked_option

# Check which option was clicked.
schedule function lunareclipse.watching:config/main_menu/check_option 2t

# Play a sound.
playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1