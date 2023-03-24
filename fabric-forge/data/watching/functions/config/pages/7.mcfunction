playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 2.0 1.0

tellraw @s "\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"text":"\uBB01\n","font": "watching:watching_ui"}
tellraw @s {"text":"Config [7/7]\n","underlined": true}

#lurkingLanguage
tellraw @s {"text":"Lurking Language","underlined":false,"hoverEvent":{"action":"show_text","contents":"Changes the language that Herobrine will use to communicate with the player."}}
execute if score lang lurkingLanguageConfig matches 1 run tellraw @s [{"text":"[ENGLISH]","color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/lurking_language/english"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[SWEDISH]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/lurking_language/swedish"}}]
execute if score lang lurkingLanguageConfig matches 0 run tellraw @s [{"text":"[ENGLISH]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/function watching:config/lurking_language/english"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[SWEDISH]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/lurking_language/swedish"}}]
tellraw @s "\n\n\n\n\n\n\n\n\n"


#pageSelect
tellraw @s {"text":"Pages","underlined":false,"color": "gray"}
tellraw @s ["",{"text":"[1]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function fromthefog:admin/config"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[2]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/2"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[3]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/3"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[4]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/4"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[5]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/5"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[6]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/6"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[7]","underlined":true,"color": "green","clickEvent":{"action":"run_command","value":"/function watching:config/pages/7"}}]