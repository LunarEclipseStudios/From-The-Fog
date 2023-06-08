playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 2.0 1.0

tellraw @s "\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"text":"\uBB01\n","font": "watching:watching_ui"}
tellraw @s [{"translate":"config.page4.progress","underlined": true},{"text":"\n"}]

#crimsonCurseDonation
execute if score crimsonCurseConfig ftf.configOptions matches 0 run tellraw @s ["",{"translate":"config.crimsonCurseConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.crimsonCurseConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC27","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/crimson_curse/true"},"font": "watching:watching_ui"}]
execute if score crimsonCurseConfig ftf.configOptions matches 1 run tellraw @s ["",{"translate":"config.crimsonCurseConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.crimsonCurseConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC28","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/crimson_curse/false"},"font": "watching:watching_ui"}]
tellraw @s ""

#OGshrineMechanic
execute if score OGshrineMechanicConfig ftf.configOptions matches 0 run tellraw @s ["",{"translate":"config.OGshrineMechanicConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.OGshrineMechanicConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC27","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/og_shrine/true"},"font": "watching:watching_ui"}]
execute if score OGshrineMechanicConfig ftf.configOptions matches 1 run tellraw @s ["",{"translate":"config.OGshrineMechanicConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.OGshrineMechanicConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC28","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/og_shrine/false"},"font": "watching:watching_ui"}]
tellraw @s ""

#nightmareMechanic
execute if score nightmareMechanicConfig ftf.configOptions matches 0 run tellraw @s ["",{"translate":"config.nightmareMechanicConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.nightmareMechanicConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC27","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/nightmare/true"},"font": "watching:watching_ui"}]
execute if score nightmareMechanicConfig ftf.configOptions matches 1 run tellraw @s ["",{"translate":"config.nightmareMechanicConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.nightmareMechanicConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC28","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/nightmare/false"},"font": "watching:watching_ui"}]
tellraw @s ""

#windowWatcher
execute if score windowWatcherConfig ftf.configOptions matches 0 run tellraw @s ["",{"translate":"config.windowWatcherConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.windowWatcherConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC27","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/window_watcher/true"},"font": "watching:watching_ui"}]
execute if score windowWatcherConfig ftf.configOptions matches 1 run tellraw @s ["",{"translate":"config.windowWatcherConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.windowWatcherConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC28","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/window_watcher/false"},"font": "watching:watching_ui"}]
tellraw @s ""

#chilledCandles
execute if score chilledCandlesConfig ftf.configOptions matches 0 run tellraw @s ["",{"translate":"config.chilledCandlesConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.chilledCandlesConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC27","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/chilled_candles/true"},"font": "watching:watching_ui"}]
execute if score chilledCandlesConfig ftf.configOptions matches 1 run tellraw @s ["",{"translate":"config.chilledCandlesConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.chilledCandlesConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC28","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/chilled_candles/false"},"font": "watching:watching_ui"}]
tellraw @s ""

#sinisterSigns
execute if score sinisterSignsConfig ftf.configOptions matches 0 run tellraw @s ["",{"translate":"config.sinisterSignsConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.sinisterSignsConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC27","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/sinister_signs/true"},"font": "watching:watching_ui"}]
execute if score sinisterSignsConfig ftf.configOptions matches 1 run tellraw @s ["",{"translate":"config.sinisterSignsConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.sinisterSignsConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC28","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/sinister_signs/false"},"font": "watching:watching_ui"}]
tellraw @s ""

#pageSelect
tellraw @s {"translate":"config.pages.title","underlined":false,"color": "gray"}
tellraw @s [{"text":"","font": "watching:watching_ui"},{"text":"\uBC29","color":"white","hoverEvent":{"action":"show_text","contents":{"translate":"config.page1.title"}},"clickEvent":{"action":"run_command","value":"/function fromthefog:admin/config"}},{"text":"밳\uBC31","color":"white","hoverEvent":{"action":"show_text","contents":{"translate":"config.page2.title"}},"clickEvent":{"action":"run_command","value":"/function watching:config/pages/2"}},{"text":"밳\uBC31","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/pages/3"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.page3.title"}}},{"text":"밳\uBC32","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/pages/4"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.page4.title"}}},{"text":"밳\uBC31","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/pages/5"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.page5.title"}}},{"text":"밳\uBC30","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/pages/6"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.page6.title"}}}]

