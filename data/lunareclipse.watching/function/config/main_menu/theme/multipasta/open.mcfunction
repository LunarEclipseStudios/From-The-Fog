# Open the page from the pivot.
execute as @e[type=marker,tag=watching.pivot,distance=..15] at @s run function lunareclipse.watching:config/main_menu/theme/multipasta/multipasta_page
execute as @a[tag=watching.opened_config] at @s run playsound lunareclipse.watching:config.setting.stalking_sighting.true master @s ~ ~999999 ~ 1 1 1