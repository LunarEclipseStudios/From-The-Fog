playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 2.0 1.0

tellraw @s "\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"text":"\uBB01\n","font": "watching:watching_ui"}
tellraw @s {"text":"Config [5/5]\n","underlined": true}

#jumpscareMechanic
tellraw @s {"text":"No Sleep","underlined":false,"hoverEvent":{"action":"show_text","contents":"Toggles whether or not Herobrine will prevent you from sleeping when he's nearby. (Will not work on peaceful.)"}}
execute if score true noSleepConfig matches 0 run tellraw @s [{"text":"[TRUE]","color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/no_sleep/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/no_sleep/false"}}]
execute if score true noSleepConfig matches 1 run tellraw @s [{"text":"[TRUE]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/function watching:config/no_sleep/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/no_sleep/false"}}]
tellraw @s "\n\n\n\n\n\n\n\n\n"


#pageSelect
tellraw @s {"text":"Pages","underlined":false,"color": "gray"}
tellraw @s ["",{"text":"[1]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function fromthefog:admin/config"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[2]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/2"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[3]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/3"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[4]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/4"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[5]","underlined":true,"color": "green","clickEvent":{"action":"run_command","value":"/function watching:config/pages/5"}}]