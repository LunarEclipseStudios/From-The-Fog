# List of variables used:
# "structure" - The structure that the player has found.

# Grant the find structure advancement.
execute if entity @s[advancements={from_the_fog:root=true}] run advancement grant @a[distance=..16] only from_the_fog:structure/find_any_structure

# Give the player the advancement.
$execute if entity @p[advancements={from_the_fog:root=true}] run advancement grant @a[distance=..16] only from_the_fog:structure/find_$(structure)