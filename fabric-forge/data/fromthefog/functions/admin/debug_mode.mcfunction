#toggleDebug
tag @s add debugMode
execute if entity @s[tag=debugToggle] run tag @s remove debugMode
tag @s remove debugToggle
execute if entity @s[tag=debugMode] run tag @s add debugToggle

#chatMessage&Sound
execute if entity @s[tag=debugMode] run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Enabled Debug Mode successfully!","color": "green"},{"text":"]","color":"gray"}]
execute unless entity @s[tag=debugMode] run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Disabled Debug Mode successfully!","color": "green"},{"text":"]","color":"gray"}]
execute if entity @s[tag=debugMode] run playsound block.note_block.pling master @s ~ ~ ~ 1.0 2.0 1.0
execute unless entity @s[tag=debugMode] run playsound block.note_block.pling master @s ~ ~ ~ 1.0 1.0 1.0