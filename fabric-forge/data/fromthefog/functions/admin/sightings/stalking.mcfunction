execute unless entity @s[tag=stalkingTutorial] run tellraw @s ["",{"translate":"chat.sighting_summons.tutorial.statement","color": "red","underlined": true},{"text":":","color": "red","underlined": true}," ",{"translate": "chat.sighting_summons.stalking.tutorial.description","color": "gray"}]
tag @s add stalkingTutorial
function watching:events/sightings/stalking