playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 2.0 1.0

tellraw @s "\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"text":"\uBB01\n","font": "watching:watching_ui"}
tellraw @s {"text":"Config [6/6]\n","underlined": true}

#nightmareMechanic
tellraw @s {"text":"Nightmare Mechanic","underlined":false,"hoverEvent":{"action":"show_text","contents":"Toggles whether or not Herobrine will appear at the foot of your bed when you sleep."}}
execute if score true nightmareMechanicConfig matches 0 run tellraw @s [{"text":"[TRUE]","color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/nightmare/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/nightmare/false"}}]
execute if score true nightmareMechanicConfig matches 1 run tellraw @s [{"text":"[TRUE]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/function watching:config/nightmare/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/nightmare/false"}}]
tellraw @s "\n\n\n\n\n\n\n\n\n"


#pageSelect
tellraw @s {"text":"Pages","underlined":false,"color": "gray"}
tellraw @s ["",{"text":"[1]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function fromthefog:admin/config"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[2]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/2"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[3]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/3"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[4]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/4"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[5]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/5"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[6]","underlined":true,"color": "green","clickEvent":{"action":"run_command","value":"/function watching:config/pages/6"}}]