execute unless entity @s[tag=lurkingTutorial] run tellraw @s ["",{"translate":"chat.sighting_summons.tutorial.statement","color": "red","underlined": true},{"text":":","color": "red","underlined": true}," ",{"translate": "chat.sighting_summons.lurking.tutorial.description","color": "gray"}]
tag @s add lurkingTutorial
function watching:events/sightings/lurking