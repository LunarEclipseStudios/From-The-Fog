playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 2.0 1.0

tellraw @s "\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"text":"\uBB01\n","font": "watching:watching_ui"}
tellraw @s {"text":"Config [4/5]\n","underlined": true}

#jumpscareMechanic
tellraw @s {"text":"Jumpscare Mechanic","underlined":false,"hoverEvent":{"action":"show_text","contents":"Enables the ability for Herobrine to jumpscare the player when they get too close."}}
execute if score true jumpscareConfig matches 0 run tellraw @s [{"text":"[TRUE]","color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/jumpscare/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/jumpscare/false"}}]
execute if score true jumpscareConfig matches 1 run tellraw @s [{"text":"[TRUE]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/function watching:config/jumpscare/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/jumpscare/false"}}]
tellraw @s ""

#crashMechanic
tellraw @s {"text":"Crash Mechanic","underlined":false,"hoverEvent":{"action":"show_text","contents":"Swaps the jumpscare mechanic for the og crash mechanic. (Only works when jumpscare is enabled.)"}}
execute if score true crashConfig matches 0 run tellraw @s [{"text":"[TRUE]","color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/crash/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/crash/false"}}]
execute if score true crashConfig matches 1 run tellraw @s [{"text":"[TRUE]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/function watching:config/crash/true"}},{"text":" | ","underlined":false,"color":"dark_gray","clickEvent":{"action":"copy_to_clipboard","value":"He's Watching..."}},{"text":"[FALSE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/crash/false"}}]
tellraw @s ""

#startDelay
tellraw @s {"text":"Creeping Vanishing Delay","underlined":false,"hoverEvent":{"action":"show_text","contents":"Changes how long it takes for Herobrine to disappear after being caught creeping up on the player."}}
execute if score number creepingVanishingDelayConfig matches 0 run tellraw @s ["",{"text":"[NONE]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/none"}},{"text":" | ","color":"dark_gray"},{"text":"[0.5s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/0.5"}},{"text":" | ","color":"dark_gray"},{"text":"[1s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/1"}},{"text":" | ","color":"dark_gray"},{"text":"[1.5s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/1.5"}},{"text":" | ","color":"dark_gray"},{"text":"[2s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/2"}}]
execute if score number creepingVanishingDelayConfig matches 1 run tellraw @s ["",{"text":"[NONE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/none"}},{"text":" | ","color":"dark_gray"},{"text":"[0.5s]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/0.5"}},{"text":" | ","color":"dark_gray"},{"text":"[1s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/1"}},{"text":" | ","color":"dark_gray"},{"text":"[1.5s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/1.5"}},{"text":" | ","color":"dark_gray"},{"text":"[2s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/2"}}]
execute if score number creepingVanishingDelayConfig matches 2 run tellraw @s ["",{"text":"[NONE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/none"}},{"text":" | ","color":"dark_gray"},{"text":"[0.5s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/0.5"}},{"text":" | ","color":"dark_gray"},{"text":"[1s]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/1"}},{"text":" | ","color":"dark_gray"},{"text":"[1.5s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/1.5"}},{"text":" | ","color":"dark_gray"},{"text":"[2s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/2"}}]
execute if score number creepingVanishingDelayConfig matches 3 run tellraw @s ["",{"text":"[NONE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/none"}},{"text":" | ","color":"dark_gray"},{"text":"[0.5s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/0.5"}},{"text":" | ","color":"dark_gray"},{"text":"[1s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/1"}},{"text":" | ","color":"dark_gray"},{"text":"[1.5s]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/1.5"}},{"text":" | ","color":"dark_gray"},{"text":"[2s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/2"}}]
execute if score number creepingVanishingDelayConfig matches 4 run tellraw @s ["",{"text":"[NONE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/none"}},{"text":" | ","color":"dark_gray"},{"text":"[0.5s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/0.5"}},{"text":" | ","color":"dark_gray"},{"text":"[1s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/1"}},{"text":" | ","color":"dark_gray"},{"text":"[1.5s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/1.5"}},{"text":" | ","color":"dark_gray"},{"text":"[2s]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/creeping_vanishing_delay/2"}}]
tellraw @s ""

#startDelay
tellraw @s {"text":"Stalking Vanishing Delay","underlined":false,"hoverEvent":{"action":"show_text","contents":"Changes how long it takes for Herobrine to disappear after being caught stalking the player."}}
execute if score number stalkingVanishingDelayConfig matches 0 run tellraw @s ["",{"text":"[NONE]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/none"}},{"text":" | ","color":"dark_gray"},{"text":"[0.5s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/0.5"}},{"text":" | ","color":"dark_gray"},{"text":"[1s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/1"}},{"text":" | ","color":"dark_gray"},{"text":"[1.5s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/1.5"}},{"text":" | ","color":"dark_gray"},{"text":"[2s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/2"}}]
execute if score number stalkingVanishingDelayConfig matches 1 run tellraw @s ["",{"text":"[NONE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/none"}},{"text":" | ","color":"dark_gray"},{"text":"[0.5s]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/0.5"}},{"text":" | ","color":"dark_gray"},{"text":"[1s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/1"}},{"text":" | ","color":"dark_gray"},{"text":"[1.5s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/1.5"}},{"text":" | ","color":"dark_gray"},{"text":"[2s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/2"}}]
execute if score number stalkingVanishingDelayConfig matches 2 run tellraw @s ["",{"text":"[NONE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/none"}},{"text":" | ","color":"dark_gray"},{"text":"[0.5s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/0.5"}},{"text":" | ","color":"dark_gray"},{"text":"[1s]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/1"}},{"text":" | ","color":"dark_gray"},{"text":"[1.5s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/1.5"}},{"text":" | ","color":"dark_gray"},{"text":"[2s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/2"}}]
execute if score number stalkingVanishingDelayConfig matches 3 run tellraw @s ["",{"text":"[NONE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/none"}},{"text":" | ","color":"dark_gray"},{"text":"[0.5s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/0.5"}},{"text":" | ","color":"dark_gray"},{"text":"[1s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/1"}},{"text":" | ","color":"dark_gray"},{"text":"[1.5s]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/1.5"}},{"text":" | ","color":"dark_gray"},{"text":"[2s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/2"}}]
execute if score number stalkingVanishingDelayConfig matches 4 run tellraw @s ["",{"text":"[NONE]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/none"}},{"text":" | ","color":"dark_gray"},{"text":"[0.5s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/0.5"}},{"text":" | ","color":"dark_gray"},{"text":"[1s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/1"}},{"text":" | ","color":"dark_gray"},{"text":"[1.5s]","underlined":false,"color":"red","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/1.5"}},{"text":" | ","color":"dark_gray"},{"text":"[2s]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function watching:config/stalking_vanishing_delay/2"}}]
tellraw @s ""

#pageSelect
tellraw @s {"text":"Pages","underlined":false,"color": "gray"}
tellraw @s ["",{"text":"[1]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function fromthefog:admin/config"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[2]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/2"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[3]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/3"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[4]","underlined":true,"color": "green","clickEvent":{"action":"run_command","value":"/function watching:config/pages/4"}},{"text":" | ","underlined":false,"color":"dark_gray"},{"text":"[5]","underlined":false,"color": "red","clickEvent":{"action":"run_command","value":"/function watching:config/pages/5"}}]