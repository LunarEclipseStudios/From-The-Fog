execute unless entity @s[tag=creepingTutorial] run tellraw @s ["",{"text":"Command Tutorial:","color": "red","underlined": true},{"text": " This command activates the creeping mechanic and spawns Herobrine behind the player it is executed on.","color": "gray"}]
tag @s add creepingTutorial
function watching:events/sightings/creeping