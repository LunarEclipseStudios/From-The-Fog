# If Herobrine is around the pet do the following.
execute unless entity @e[type=armor_stand,tag=watching.herobrine,distance=..80] run return fail

# If the dog is sitting them make it stare at Herobrine relentlessly.
execute if data entity @s {Sitting:1b} run rotate @s facing entity @e[type=armor_stand,tag=watching.herobrine,limit=1]

# Make the dog growl on an interval this is done by actually making the dog angry at Herobrine.
data modify entity @s AngerTime set value 20
data modify entity @s AngryAt set from entity @e[type=armor_stand,tag=watching.herobrine,limit=1] UUID

# Give the player the advancement if advancements are enabled.
execute if entity @p[advancements={from_the_fog:root=true}] run advancement grant @a[distance=..15] only from_the_fog:haunting/encounter_dog_sense