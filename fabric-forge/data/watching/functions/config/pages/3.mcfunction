playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 2.0 1.0

tellraw @s "\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"text":"\uBB01\n","font": "watching:watching_ui"}
tellraw @s {"text":"Config [3/5]\n","underlined": true}

#spotNoise
tellraw @s {"text":"Sighting Noise","underlined":false,"hoverEvent":{"action":"show_text","contents":"Changes whether or not a noise is played when the player spots Herobrine."}}
execute if score true spotNoiseConfig matches 1 run tellraw @s [{"text":"[TRUE]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/function watching:config/spot_noise/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/spot_noise/false"}}]
execute if score true spotNoiseConfig matches 0 run tellraw @s [{"text":"[TRUE]","color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/spot_noise/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/spot_noise/false"}}]
tellraw @s ""

#glowingEyes
tellraw @s {"text":"Emissive Layers","underlined":false,"hoverEvent":{"action":"show_text","contents":"Changes whether or not Herobrine will have emissive layers. Useful for players who want to make him more vanilla, or that use dynamic lighting."}}
execute if score true glowingEyesConfig matches 1 run tellraw @s [{"text":"[TRUE]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/function watching:config/glowing_eyes/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/glowing_eyes/false"}}]
execute if score true glowingEyesConfig matches 0 run tellraw @s [{"text":"[TRUE]","color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/glowing_eyes/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/glowing_eyes/false"}}]
tellraw @s ""

#herobrineSkin
tellraw @s {"text":"Herobrine Skin","underlined":false,"hoverEvent":{"action":"show_text","contents":"Changes Herobrine's skin texture/model."}}
tellraw @s {"text":"[Skin Library]","color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/pages/skins/1"}}
tellraw @s ""

#randomizeSkins
tellraw @s {"text":"Randomize Skins","underlined":false,"hoverEvent":{"action":"show_text","contents":"Changes whether or not Herobrine's skin randomizes everytime he appears."}}
execute if score true randomizeSkinsConfig matches 1 run tellraw @s [{"text":"[TRUE]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/function watching:config/randomize_skins/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/randomize_skins/false"}}]
execute if score true randomizeSkinsConfig matches 0 run tellraw @s [{"text":"[TRUE]","color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/randomize_skins/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/randomize_skins/false"}}]
tellraw @s ""

#pageSelect
tellraw @s {"text":"Pages","underlined":false,"color": "gray"}
tellraw @s ["",{"text":"[1]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function fromthefog:admin/config"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[2]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/2"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[3]","underlined":true,"color": "green","clickEvent":{"action":"run_command","value":"/function watching:config/pages/3"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[4]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/4"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[5]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/5"}}]