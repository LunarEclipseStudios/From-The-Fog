execute unless entity @s[tag=creepingTutorial] run tellraw @s ["",{"translate":"chat.sighting_summons.tutorial.statement","color": "red","underlined": true},{"text":":","color": "red","underlined": true}," ",{"translate": "chat.sighting_summons.creeping.tutorial.description","color": "gray"}]
tag @s add creepingTutorial
function watching:events/sightings/creeping