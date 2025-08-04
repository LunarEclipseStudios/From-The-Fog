# Log the day segmeents into a global value variable.
scoreboard players set day_segment watching.global_values 24000
# Log the time played into the time played scoreboard so it can be used for M A T H.
scoreboard players operation @s watching.time_played = @s watching.player_time
# Get the amount of time the player has player for.
scoreboard players operation @s watching.time_played /= day_segment watching.global_values
# Clear the day segment value because I'm OCD.
scoreboard players reset day_segment watching.global_values

# Grant the advancements based on day count.
execute unless entity @s[advancements={from_the_fog:root=true}] run return 1
# Give the player the advancement if advancements are enabled.
execute if score @s watching.time_played matches 3.. run advancement grant @s only from_the_fog:time_played/3_days
execute if score @s watching.time_played matches 10.. run advancement grant @s only from_the_fog:time_played/10_days
execute if score @s watching.time_played matches 50.. run advancement grant @s only from_the_fog:time_played/50_days
execute if score @s watching.time_played matches 100.. run advancement grant @s only from_the_fog:time_played/100_days
execute if score @s watching.time_played matches 200.. run advancement grant @s only from_the_fog:time_played/200_days