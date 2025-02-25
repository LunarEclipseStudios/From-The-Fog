tellraw @s ["",{"text":"[","color":"gray"},{"translate":"chat.cleanup.execute.message"},{"text":"]","color":"gray"}]
execute unless entity @e[tag=herobrineEntity] run tellraw @s ["",{"translate":"chat.cleanup.failure.statement","color":"dark_red"}," ",{"translate":"chat.cleanup.failure.description","color":"red"}]
execute unless entity @e[tag=herobrineEntity] run tag @s add noError
kill @e[tag=herobrineEntity]
execute if entity @e[tag=herobrineEntity] run tellraw @s ["",{"translate":"chat.cleanup.failure.statement","color":"dark_red"}," ",{"translate":"chat.cleanup.failure.description","color":"red"}]
execute unless entity @s[tag=noError] unless entity @e[tag=herobrineEntity] run tellraw @a ["",{"text":"[","color":"dark_green"},{"translate":"chat.cleanup.success.statement","color":"green"},{"text":"]","color":"dark_green"}]
tag @s remove noError