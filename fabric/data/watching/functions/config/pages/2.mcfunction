playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 2.0 1.0

tellraw @s "\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"text":"\uBB01\n","font": "watching:watching_ui"}
tellraw @s {"text":"Config [2/3]\n","underlined": true}

#ghostMiner
tellraw @s {"text":"Ghost Miner","underlined":false,"hoverEvent":{"action":"show_text","contents":"Changes whether or not Herobrine will mine next to you in strip mines."}}
execute if score true ghostMineConfig matches 1 run tellraw @s [{"text":"[TRUE]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/function watching:config/ghost_mine/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/ghost_mine/false"}}]
execute if score true ghostMineConfig matches 0 run tellraw @s [{"text":"[TRUE]","color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/ghost_mine/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/ghost_mine/false"}}]
tellraw @s ""

#creepingMechanic
tellraw @s {"text":"Creeping Mechanic","underlined":false,"hoverEvent":{"action":"show_text","contents":"Changes whether or not Herobrine will stand behind you waiting for you to turn around."}}
execute if score true creepingConfig matches 1 run tellraw @s [{"text":"[TRUE]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/function watching:config/creeping/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping/false"}}]
execute if score true creepingConfig matches 0 run tellraw @s [{"text":"[TRUE]","color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/creeping/false"}}]
tellraw @s ""

#stalkingMechanic
tellraw @s {"text":"Stalking Mechanic","underlined":false,"hoverEvent":{"action":"show_text","contents":"Changes whether or not Herobrine will stalk you from a distance."}}
execute if score true stalkingConfig matches 1 run tellraw @s [{"text":"[TRUE]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/function watching:config/stalking/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking/false"}}]
execute if score true stalkingConfig matches 0 run tellraw @s [{"text":"[TRUE]","color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/stalking/false"}}]
tellraw @s ""


#pageSelect
tellraw @s {"text":"Pages","underlined":false,"color": "gray"}
tellraw @s [{"text":"[1]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function fromthefog:admin/config"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[2]","underlined":true,"color": "green","clickEvent":{"action":"run_command","value":"/function watching:config/pages/2"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[3]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/3"}}]