tag @s add angryAtHim
data merge entity @s {AngerTime:350}
tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=herobrine,limit=1]
playsound minecraft:entity.wolf.whine neutral @a ~ ~ ~ 0.5

#grantAdvancement
execute as @a[distance=..12] if entity @s[advancements={watching:main/root=true,watching:main/dog_growl=false}] run advancement grant @s only watching:main/dog_growl