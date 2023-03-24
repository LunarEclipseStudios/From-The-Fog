playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 2.0 1.0

tellraw @s "\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"text":"\uBB01\n","font": "watching:watching_ui"}
tellraw @s {"text":"Config [6/7]\n","underlined": true}

#nightmareMechanic
tellraw @s {"text":"Nightmare Mechanic","underlined":false,"hoverEvent":{"action":"show_text","contents":"Toggles whether or not Herobrine will appear at the foot of your bed when you sleep."}}
execute if score true nightmareMechanicConfig matches 0 run tellraw @s [{"text":"[TRUE]","color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/nightmare/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/nightmare/false"}}]
execute if score true nightmareMechanicConfig matches 1 run tellraw @s [{"text":"[TRUE]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/function watching:config/nightmare/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/nightmare/false"}}]
tellraw @s ""

#windowWatcher
tellraw @s {"text":"Window Watcher","underlined":false,"hoverEvent":{"action":"show_text","contents":"Toggles whether or not Herobrine will disappear when viewed through a window."}}
execute if score true windowWatcherConfig matches 0 run tellraw @s [{"text":"[TRUE]","color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/window_watcher/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/window_watcher/false"}}]
execute if score true windowWatcherConfig matches 1 run tellraw @s [{"text":"[TRUE]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/function watching:config/window_watcher/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/window_watcher/false"}}]
tellraw @s ""

#chilledCandles
tellraw @s {"text":"Chilled Candles","underlined":false,"hoverEvent":{"action":"show_text","contents":"Toggles whether or not Herobrine has the ability to snuff out the players candles."}}
execute if score true chilledCandlesConfig matches 0 run tellraw @s [{"text":"[TRUE]","color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/chilled_candles/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/chilled_candles/false"}}]
execute if score true chilledCandlesConfig matches 1 run tellraw @s [{"text":"[TRUE]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/function watching:config/chilled_candles/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/chilled_candles/false"}}]
tellraw @s ""

#sinisterSigns
tellraw @s {"text":"Sinister Signs","underlined":false,"hoverEvent":{"action":"show_text","contents":"Toggles whether or not Herobrine will leave signs for the player during certain events."}}
execute if score true sinisterSignsConfig matches 0 run tellraw @s ["",{"text":"[TRUE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/sinister_signs/true"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[FALSE]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/sinister_signs/false"}}]
execute if score true sinisterSignsConfig matches 1 run tellraw @s ["",{"text":"[TRUE]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/sinister_signs/true"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[FALSE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/sinister_signs/false"}}]
tellraw @s ""


#pageSelect
tellraw @s {"text":"Pages","underlined":false,"color": "gray"}
tellraw @s ["",{"text":"[1]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function fromthefog:admin/config"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[2]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/2"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[3]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/3"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[4]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/4"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[5]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/5"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[6]","underlined":true,"color": "green","clickEvent":{"action":"run_command","value":"/function watching:config/pages/6"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[7]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/7"}}]