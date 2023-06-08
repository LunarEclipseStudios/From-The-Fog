execute unless score dayDelayConfig ftf.configOptions matches 9999.. run scoreboard players add dayDelayConfig ftf.configOptions 1
execute if score dayDelayConfig ftf.configOptions matches 9999.. run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 .8
scoreboard players reset true ftf.startedEvents
execute unless entity @s[tag=defautlingConfig] run function fromthefog:admin/config