# Mark Herobrine as spotted so he won't disappear.
scoreboard players set player_spotted watching.global_values 1

# Give the player the advancement if advancements are enabled.
execute if entity @s[advancements={from_the_fog:root=true}] run advancement grant @s only from_the_fog:haunting/get_jumpscared

# Run the malicious malfunction event if enabled.
execute if data storage lunareclipse.watching:config_options {options:{malicious_malfunction:"true"}} run return run function lunareclipse.watching:sightings/sudden_scare/crash

# Run the sudden scare if enabled.
execute if data storage lunareclipse.watching:config_options {options:{sudden_scare:"true"}} run return run function lunareclipse.watching:sightings/sudden_scare/jumpscare

# Make Herobrine disappear.
function lunareclipse.watching:sightings/models/remove