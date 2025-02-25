playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 0.5 1.0

tellraw @s "\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"text":"\uBB01\n","font": "watching:watching_ui"}
tellraw @s [{"translate":"config.sss.title","underlined": true},{"text":"\n"}]

#hittingThatGriddy
execute if score hittingThatGriddyConfig ftf.configOptions matches 0 run tellraw @s ["",{"translate":"config.hittingThatGriddyConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.hittingThatGriddyConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC27","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/griddy/true"},"font": "watching:watching_ui"}]
execute if score hittingThatGriddyConfig ftf.configOptions matches 1 run tellraw @s ["",{"translate":"config.hittingThatGriddyConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.hittingThatGriddyConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC28","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/griddy/false"},"font": "watching:watching_ui"}]
tellraw @s ""

#hoeBrineReturns
execute if score herobrineSkinConfig ftf.configOptions matches -6968.. run tellraw @s ["",{"translate":"config.hoeBrineReturnsConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.hoeBrineReturnsConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC27","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/herobrine_skin/-6969_hoebrine"},"font": "watching:watching_ui"}]
execute if score herobrineSkinConfig ftf.configOptions matches -6969 run tellraw @s ["",{"translate":"config.hoeBrineReturnsConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.hoeBrineReturnsConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC28","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/herobrine_skin/-6969_hoebrine_off"},"font": "watching:watching_ui"}]
tellraw @s "\n\n\n\n\n\n\n\n"


#pageSelect
tellraw @s {"translate":"config.pages.title","underlined":false,"color": "gray"}
tellraw @s [{"text":"","font": "watching:watching_ui"},{"text":"\uBC29","color":"white","hoverEvent":{"action":"show_text","contents":{"translate":"config.page1.title"}},"clickEvent":{"action":"run_command","value":"/function fromthefog:admin/config"}},{"text":"밳\uBC31","color":"white","hoverEvent":{"action":"show_text","contents":{"translate":"config.page2.title"}},"clickEvent":{"action":"run_command","value":"/function watching:config/pages/2"}},{"text":"밳\uBC31","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/pages/3"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.page3.title"}}},{"text":"밳\uBC31","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/pages/4"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.page4.title"}}},{"text":"밳\uBC31","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/pages/5"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.page5.title"}}},{"text":"밳\uBC30","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/pages/6"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.page6.title"}}}]

