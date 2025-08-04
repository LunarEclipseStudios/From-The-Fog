# Schedule our timed functions.
schedule function lunareclipse.watching:main/timed_ticks/1_second 1s
schedule function lunareclipse.watching:main/timed_ticks/5_minutes 300s

# Create a team for the door ghost that can help remove collision.
team add watching.door_ghost
team modify watching.door_ghost collisionRule never

# Set the commandModificationBlockLimit to max so it doesn't interfere with other packs. - This is used for large /fill commands.
gamerule commandModificationBlockLimit 999999999
# Store the block tag that's used for shrine checking this is used for checks later.
data modify storage lunareclipse.watching:global_values shrine_block_tag set value "minecraft:fire"

# Create the needed scoreboard objectives.
scoreboard objectives add watching.animations dummy
scoreboard objectives add watching.global_values dummy
scoreboard objectives add watching.raycast dummy
scoreboard objectives add watching.player_time minecraft.custom:minecraft.play_time
scoreboard objectives add watching.time_played dummy

# Set the default config values.
function lunareclipse.watching:config/initialize_defaults

# Setup the layout of the config. 
function lunareclipse.watching:config/config_layout

# Setup the information about each skin.
function lunareclipse.watching:sightings/skin_library/define_skins