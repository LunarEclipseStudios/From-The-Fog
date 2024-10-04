execute unless entity @s[tag=nightmareTutorial] run tellraw @s ["",{"translate":"chat.sighting_summons.tutorial.statement","color": "red","underlined": true},{"text":":","color": "red","underlined": true}," ",{"translate": "chat.sighting_summons.nightmare.tutorial.description","color": "gray"}]
tag @s add nightmareTutorial
function watching:events/sightings/nightmare