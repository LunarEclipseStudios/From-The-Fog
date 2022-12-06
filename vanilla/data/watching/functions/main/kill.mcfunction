execute as @e[tag=move] at @s unless entity @e[tag=spread,distance=..2] run tp @s ~666 ~-666 ~666
execute as @e[tag=head] at @s unless entity @e[tag=spread,distance=..2] run kill @s
execute as @e[tag=eyes] at @s unless entity @e[tag=spread,distance=..2] run kill @s
execute as @e[tag=body] at @s unless entity @e[tag=spread,distance=..2] run kill @s
kill @e[tag=seen]