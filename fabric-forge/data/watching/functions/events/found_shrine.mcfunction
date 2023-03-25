function watching:events/start_events
function watching:events/sightings/creeping
execute if score true OGshrineMechanicConfig matches 1 as @e[type=marker,tag=fireTrace] at @s run summon lightning_bolt ~ ~ ~
playsound watching:message.warning master @s