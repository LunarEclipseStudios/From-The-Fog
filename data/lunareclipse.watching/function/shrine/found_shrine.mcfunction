# List of variables used:
# "block_tag" - The block tag to be checking for.

# Reset our raycast score.
$scoreboard players reset $(block_tag)_raycast watching.global_values

# Log the block.
$function lunareclipse.watching:block_events/detection/raycasting/found_block {"block_tag": "$(block_tag)"}

# Activate the primary haunting events.
execute unless score started_events watching.global_values matches 1 run function lunareclipse.watching:start_events

# Make the shrine strike with lightning if enabled.
execute if data storage lunareclipse.watching:config_options {options:{shrine_strike:"true"}} align zx positioned ~0.5 ~ ~0.5 run summon minecraft:lightning_bolt ~ ~ ~

# Give the player the advancement if advancements are enabled.
execute if entity @s[advancements={from_the_fog:root=true}] run advancement grant @s only from_the_fog:haunting/build_shrine

# Make him temporaily more active.
function lunareclipse.watching:utils/activity_multiplier/set {value:6,delay:360,event_timer:150}

# Display the caution caption if enabled.
execute if data storage lunareclipse.watching:config_options {options:{caution_caption:"true"}} run function lunareclipse.watching:shrine/caution_caption/init

# If shrine suprise is enabled run the following.
execute if data storage lunareclipse.watching:config_options {options:{shrine_surprise:"false"}} run return 1

# Mark Herobrine as spotted so he won't disappear.
scoreboard players set player_spotted watching.global_values 1

# Summon Herobrine on top of the shrine.
execute align zx positioned ~0.5 ~ ~0.5 run function lunareclipse.watching:sightings/presets/shrine_surprise