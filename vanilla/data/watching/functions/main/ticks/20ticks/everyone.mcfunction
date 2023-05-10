#footsteps
execute if score fearfulFootstepsConfig ftf.configOptions matches 1 if score true ftf.startedEvents matches 1 unless entity @e[type=marker,tag=footstepsEmitter] unless entity @e[tag=herobrineEntity] if block ~ ~-1 ~ #watching:footsteps_blocks if predicate watching:chances/footsteps_chance run function watching:events/sounds/footsteps

#removeSpottedThroughGlassTag
execute if entity @s[tag=spottedThroughGlass] run tag @s remove spottedThroughGlass

#advancements
execute if score advancementsConfig ftf.configOptions matches 1 run advancement grant @s only watching:main/root
execute if score advancementsConfig ftf.configOptions matches 0 run advancement revoke @s from watching:main/root

#grantSurvivedDaysAdvancements
execute if entity @s[advancements={watching:main/root=true,watching:main/survive/3_days=false}] if score @s ftf.timePlayed matches 72000.. run advancement grant @s only watching:main/survive/3_days
execute if entity @s[advancements={watching:main/root=true,watching:main/survive/10_days=false}] if score @s ftf.timePlayed matches 240000.. run advancement grant @s only watching:main/survive/10_days
execute if entity @s[advancements={watching:main/root=true,watching:main/survive/50_days=false}] if score @s ftf.timePlayed matches 1200000.. run advancement grant @s only watching:main/survive/50_days
execute if entity @s[advancements={watching:main/root=true,watching:main/survive/100_days=false}] if score @s ftf.timePlayed matches 2400000.. run advancement grant @s only watching:main/survive/100_days
execute if entity @s[advancements={watching:main/root=true,watching:main/survive/200_days=false}] if score @s ftf.timePlayed matches 4800000.. run advancement grant @s only watching:main/survive/200_days


#grantLibrarianAdvancement
execute if entity @s[advancements={watching:main/root=true,watching:main/be_the_librarian=false}] if entity @s[name="dizzle229"] run advancement grant @s only watching:main/be_the_librarian

#grantComicalBonzoAdvancement
execute if entity @s[advancements={watching:main/root=true,watching:main/be_comical_bonzo=false}] if entity @s[name="ComicalBonzo"] run advancement grant @s only watching:main/be_comical_bonzo
