# Return to the main menu page.
execute as @e[type=marker,tag=watching.pivot] at @s run function lunareclipse.watching:config/main_menu/open_page {page: 1}

# Play a sound.
playsound minecraft:block.lever.click master @p[tag=watching.opened_config] ~ ~ ~ 1 1 1