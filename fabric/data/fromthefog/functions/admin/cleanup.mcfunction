tellraw @s ["",{"text":"[","color":"gray"},{"text":"Removing All Herobrines"},{"text":"]","color":"gray"}]
execute unless entity @e[tag=herobrine] run tellraw @s ["",{"text":"Failed To Remove Herobrine!","color":"dark_red"},{"text":" There are currently no Herobrines loaded in this world!","color":"red"}]
execute unless entity @e[tag=herobrine] run tag @s add noError
kill @e[tag=herobrine]
execute if entity @e[tag=herobrine] run tellraw @s ["",{"text":"Failed To Remove Herobrine!","color":"dark_red"},{"text":" Please request help in our ","color":"red"},{"text":"Discord","underlined":true,"color":"dark_red","clickEvent":{"action":"open_url","value":"https://discord.lunareclipse.studio/"}},{"text":" for more information.","color":"red"}]
execute unless entity @s[tag=noError] unless entity @e[tag=herobrine] run tellraw @a ["",{"text":"[","color":"dark_green"},{"text":"Successfully Removed All Herobrines!","color":"green"},{"text":"]","color":"dark_green"}]
tag @s remove noError