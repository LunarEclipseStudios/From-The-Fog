# If Herobrine is around the pet do the following.
execute unless entity @e[type=armor_stand,tag=watching.herobrine,distance=..80] run return fail

# If the dog is sitting them make it stare at Herobrine relentlessly.
execute if data entity @s {Sitting:1b} run rotate @s facing entity @e[type=armor_stand,tag=watching.herobrine,limit=1]

# Make the dog growl on an interval this is done by actually making the dog angry at Herobrine.
execute store result score temp_anger_time watching.global_values run time query gametime
scoreboard players add temp_anger_time watching.global_values 20
execute store result entity @s anger_end_time long 1 run scoreboard players get temp_anger_time watching.global_values
data modify entity @s angry_at set from entity @e[type=armor_stand,tag=watching.herobrine,limit=1] UUID

# Clear the scoreboard.
scoreboard players reset temp_anger_time watching.global_values

# Give the player the advancement if advancements are enabled.
execute if entity @p[advancements={from_the_fog:root=true}] run advancement grant @a[distance=..15] only from_the_fog:haunting/encounter_dog_sense