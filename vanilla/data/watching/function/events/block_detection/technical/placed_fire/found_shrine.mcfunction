#logShrine
tag @e[type=marker,tag=fireTrace,sort=nearest,limit=1,distance=..6] add logged

execute unless score true ftf.startedEvents matches 1.. run function watching:events/sightings/creeping
function watching:events/start_events
execute if score OGshrineMechanicConfig ftf.configOptions matches 1 as @e[type=marker,tag=fireTrace,sort=nearest,limit=1,distance=..6] at @s align xz run summon lightning_bolt ~0.5 ~ ~0.5
#removeOtherHerobrines
execute if score shrineSupriseConfig ftf.configOptions matches 1 as @e[type=armor_stand,tag=herobrine] at @s run function watching:events/general/kill/kill
#summonHerobrine
execute if score shrineSupriseConfig ftf.configOptions matches 1 as @e[type=marker,tag=fireTrace,sort=nearest,limit=1,distance=..6] at @s align xz run summon armor_stand ~0.5 ~ ~0.5 {Tags:["spread","model","herobrine","shrine","smithed.entity","smithed.strict","herobrineEntity"],Marker:0b,Invisible:1b,Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583,NoBasePlate:1b}
execute if score shrineSupriseConfig ftf.configOptions matches 1 run scoreboard players set @e[sort=nearest,limit=1,tag=herobrine,tag=shrine] ftf.lifeLimit 560
#playSound
execute if score shrineSupriseConfig ftf.configOptions matches 1 run function watching:events/sounds/spotted
#createModel
execute if score shrineSupriseConfig ftf.configOptions matches 1 run schedule function watching:events/sightings/setup/models 1t
#advance autoConfig
execute if score autoConfig ftf.configOptions matches 1 run scoreboard players add autoConfigDays ftf.autoConfigDaysPassed 1

playsound watching:message.warning master @s
execute if entity @s[advancements={watching:main/root=true}] run advancement grant @s only watching:main/built_shrine