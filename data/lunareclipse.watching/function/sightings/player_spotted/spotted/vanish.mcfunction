# List of variables used:
# "type" - The type of sighting being removed.

# Send the debug message.
$function lunareclipse.watching:debug/message {message: "Player Spotted Herobrine", status: "1", info: {"Sighting Type": "$(type)"}, info_list: ["Sighting Type"]}

# Play the spooky noise. - Sighting Noise enabled + 50% chance to not play.
execute unless data storage lunareclipse.watching:config_options {options:{sighting_noise:"off"}} positioned ~ ~-0.1 ~ if predicate lunareclipse.watching:chances/50 run function lunareclipse.watching:sounds/disappear

# Make him temporaily more active if give him control is enabled.
execute if data storage lunareclipse.watching:config_options {options:{give_him_control:"true"}} run function lunareclipse.watching:utils/activity_multiplier/set {value:2,delay:360,event_timer:300}

# Check if the slip behind mechanic is going to work.
function lunareclipse.watching:sightings/player_spotted/spotted/slip_behind/check
# If slip behind is valid cut off the rest of the code.
execute if data storage lunareclipse.watching:global_values sightings.slip_behind run return 1

# Store the vanishing type in a storage variable so we can access it later.
$data modify storage lunareclipse.watching:global_values temp.vanish.vanishing_delay set from storage lunareclipse.watching:config_options options.$(type)_vanishing_delay

# If the sighting is a stalking or lurking and give him control is enabled roll a chance to make him tilt his head when you spot him.
execute if data storage lunareclipse.watching:config_options {options:{give_him_control:"true"}} run function lunareclipse.watching:sightings/player_spotted/spotted/tilt_head

# Make Herobrine disappear using the value.
function lunareclipse.watching:sightings/player_spotted/spotted/vanish_end with storage lunareclipse.watching:global_values temp.vanish