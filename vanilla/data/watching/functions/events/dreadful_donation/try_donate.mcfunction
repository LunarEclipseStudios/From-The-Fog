#debugMode
tellraw @a[tag=debugMode] ["",{"text":"Tried to execute Dreadful Donation event at ","color": "gray"},{"nbt":"Pos","entity":"@s","color": "dark_gray"}]

scoreboard players set true ftf.giftDayPassed 1
execute if predicate watching:chances/dreadful_donation_chance run function watching:events/dreadful_donation/donate
