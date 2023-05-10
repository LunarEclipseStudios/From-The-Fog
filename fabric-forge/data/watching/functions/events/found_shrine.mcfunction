execute unless score true ftf.startedEvents matches 1.. run function watching:events/sightings/creeping
function watching:events/start_events
execute if score OGshrineMechanicConfig ftf.configOptions matches 1 as @e[type=marker,tag=fireTrace,sort=nearest,limit=1] at @s run summon lightning_bolt ~ ~ ~
playsound watching:message.warning master @s
execute if entity @s[advancements={watching:main/root=true}] run advancement grant @s only watching:main/built_shrine