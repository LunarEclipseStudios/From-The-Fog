playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 2.0 1.0

tellraw @s "\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"text":"\uBB01\n","font": "watching:watching_ui"}
tellraw @s [{"translate":"config.page6.progress","underlined": true},{"text":"\n"}]

#ghostMiner
execute if score ghostMineConfig ftf.configOptions matches 0 run tellraw @s ["",{"translate":"config.ghostMineConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.ghostMineConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC27","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/ghost_mine/true"},"font": "watching:watching_ui"}]
execute if score ghostMineConfig ftf.configOptions matches 1 run tellraw @s ["",{"translate":"config.ghostMineConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.ghostMineConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC28","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/ghost_mine/false"},"font": "watching:watching_ui"}]
tellraw @s ""

#autoConfig
tellraw @s ["",{"translate":"config.autoConfigEnable.title","underlined":false,"obfuscated": false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.autoConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC43","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/autoconfig/enable"},"font": "watching:watching_ui"}]
tellraw @s "\n\n\n\n\n\n\n\n"

#pageSelect
tellraw @s {"translate":"config.pages.title","underlined":false,"color": "gray"}
tellraw @s [{"text":"","font": "watching:watching_ui"},{"text":"\uBC29","color":"white","hoverEvent":{"action":"show_text","contents":{"translate":"config.page1.title"}},"clickEvent":{"action":"run_command","value":"/function fromthefog:admin/config"}},{"text":"밳\uBC31","color":"white","hoverEvent":{"action":"show_text","contents":{"translate":"config.page2.title"}},"clickEvent":{"action":"run_command","value":"/function watching:config/pages/2"}},{"text":"밳\uBC31","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/pages/3"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.page3.title"}}},{"text":"밳\uBC31","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/pages/4"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.page4.title"}}},{"text":"밳\uBC31","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/pages/5"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.page5.title"}}},{"text":"밳\uBC35","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/pages/6"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.page6.title"}}}]

