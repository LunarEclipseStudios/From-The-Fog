# If the scoreboard exceeds the limit then stop the loop.
execute if score @s watching.raycast2 matches 256.. run return 0
# Increment the raycast scoreboard.
scoreboard players add @s watching.raycast2 1

# If Herobrine is found run the following.
execute unless score player_spotted watching.global_values matches 1 run return fail

# Play the suspense strike sound to the player if Herobrine is fixated on.
execute unless score suspenseful_spotted watching.global_values matches 1 run function lunareclipse.watching:sounds/suspenseful_sighting

# Set the suspenseful_spotted value to true.
scoreboard players set suspenseful_spotted watching.global_values 1