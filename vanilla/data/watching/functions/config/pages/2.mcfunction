playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 2.0 1.0

tellraw @s "\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"text":"\uBB01\n","font": "watching:watching_ui"}
tellraw @s [{"translate":"config.page2.progress","underlined": true},{"text":"\n"}]

#disappearingTorches
execute if score poofingTorchesConfig ftf.configOptions matches 0 run tellraw @s ["",{"translate":"config.poofingTorchesConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.poofingTorchesConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC27","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/disappearing_torches/true"},"font": "watching:watching_ui"}]
execute if score poofingTorchesConfig ftf.configOptions matches 1 run tellraw @s ["",{"translate":"config.poofingTorchesConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.poofingTorchesConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC28","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/disappearing_torches/false"},"font": "watching:watching_ui"}]
tellraw @s ""

#burningBase
execute if score burningBaseConfig ftf.configOptions matches 0 run tellraw @s ["",{"translate":"config.burningBaseConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.burningBaseConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC27","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/burning_base/true"},"font": "watching:watching_ui"}]
execute if score burningBaseConfig ftf.configOptions matches 1 run tellraw @s ["",{"translate":"config.burningBaseConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.burningBaseConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC28","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/burning_base/false"},"font": "watching:watching_ui"}]
tellraw @s ""

#spotNoise
execute if score spotNoiseConfig ftf.configOptions matches 0 run tellraw @s ["",{"translate":"config.spotNoiseConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.spotNoiseConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC27","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/spot_noise/true"},"font": "watching:watching_ui"}]
execute if score spotNoiseConfig ftf.configOptions matches 1 run tellraw @s ["",{"translate":"config.spotNoiseConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.spotNoiseConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC28","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/spot_noise/false"},"font": "watching:watching_ui"}]
tellraw @s ""

#glowingEyes
execute if score glowingEyesConfig ftf.configOptions matches 0 run tellraw @s ["",{"translate":"config.glowingEyesConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.glowingEyesConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC27","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/glowing_eyes/true"},"font": "watching:watching_ui"}]
execute if score glowingEyesConfig ftf.configOptions matches 1 run tellraw @s ["",{"translate":"config.glowingEyesConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.glowingEyesConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC28","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/glowing_eyes/false"},"font": "watching:watching_ui"}]
tellraw @s ""

#herobrineSkin
tellraw @s ["",{"translate":"config.herobrineSkinConfig.title","underlined":false,"clickEvent":{"action":"run_command","value":"/function watching:config/pages/what"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.herobrineSkinConfig.description"}}},{"text":" | ","color":"dark_gray"},{"text":"\uBC36","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/pages/skins/1"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.herobrineSkinConfig.setting1"}},"font": "watching:watching_ui"}]
tellraw @s ""

#lurkingLanguage
execute if score lurkingLanguageConfig ftf.configOptions matches 1 run tellraw @s [{"text":"","font": "watching:watching_ui"},{"translate":"config.lurkingLanguageConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.lurkingLanguageConfig.description"}},"font":"minecraft:default"},{"text":" | ","color":"dark_gray"},{"text":"\uBC34","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/lurking_language/swedish"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.lurkingLanguageConfig.setting1"}}},{"text":"밳\uBC31"},{"text":"밳\uBC30","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/lurking_language/english"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.lurkingLanguageConfig.setting2"}}}]
execute if score lurkingLanguageConfig ftf.configOptions matches 0 run tellraw @s [{"text":"","font": "watching:watching_ui"},{"translate":"config.lurkingLanguageConfig.title","underlined":false,"hoverEvent":{"action":"show_text","contents":{"translate":"config.lurkingLanguageConfig.description"}},"font":"minecraft:default"},{"text":" | ","color":"dark_gray"},{"text":"\uBC29","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/lurking_language/swedish"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.lurkingLanguageConfig.setting1"}}},{"text":"밳\uBC31"},{"text":"밳\uBC32","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/lurking_language/english"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.lurkingLanguageConfig.setting2"}}}]
tellraw @s ""


#pageSelect
tellraw @s {"translate":"config.pages.title","underlined":false,"color": "gray"}
tellraw @s [{"text":"","font": "watching:watching_ui"},{"text":"\uBC29","color":"white","hoverEvent":{"action":"show_text","contents":{"translate":"config.page1.title"}},"clickEvent":{"action":"run_command","value":"/function fromthefog:admin/config"}},{"text":"밳\uBC32","color":"white","hoverEvent":{"action":"show_text","contents":{"translate":"config.page2.title"}},"clickEvent":{"action":"run_command","value":"/function watching:config/pages/2"}},{"text":"밳\uBC31","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/pages/3"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.page3.title"}}},{"text":"밳\uBC31","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/pages/4"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.page4.title"}}},{"text":"밳\uBC31","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/pages/5"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.page5.title"}}},{"text":"밳\uBC30","color":"white","clickEvent":{"action":"run_command","value":"/function watching:config/pages/6"},"hoverEvent":{"action":"show_text","contents":{"translate":"config.page6.title"}}}]

