# Teleport the base entity to the correct position in accordince to bed rotation.
execute if block ~ ~ ~ #beds[facing=west] run tp @s ~2 ~ ~
execute if block ~ ~ ~ #beds[facing=east] run tp @s ~-2 ~ ~
execute if block ~ ~ ~ #beds[facing=south] run tp @s ~ ~ ~-2
execute if block ~ ~ ~ #beds[facing=north] run tp @s ~ ~ ~2