# List of variables used:
# "location" - The location that Herobrine is meant to face. (Can be passed coordinates. If you want it to face an entity do "entity @p")

# Make Herobrine face the location defined.
$execute as @e[type=armor_stand,tag=watching.ai] run rotate @s facing $(location)