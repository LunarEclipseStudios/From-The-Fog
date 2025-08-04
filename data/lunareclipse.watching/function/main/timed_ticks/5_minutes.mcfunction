# Reschedule the function.
schedule function lunareclipse.watching:main/timed_ticks/5_minutes 300s

# Make sure the world doesn't get stuck in limbo with no sightings. (In theory it can't happen but with crashes you never know.)
execute unless entity @e[type=#lunareclipse.watching:herobrine,tag=watching.herobrine] run function lunareclipse.watching:sightings/cleanup

# Revoke the forest detection advancement from every player.
advancement revoke @a from lunareclipse.watching:technical/block_detection/placed_forest

# Attempt to spawn one of the structures.
execute unless data storage lunareclipse.watching:config_options {options:{mossy_pyramid:"off"}} run function lunareclipse.watching:structures/place/start {structure:"mossy_pyramid"}
execute unless data storage lunareclipse.watching:config_options {options:{sand_pyramid:"off"}} run function lunareclipse.watching:structures/place/start {structure:"sand_pyramid"}
execute unless data storage lunareclipse.watching:config_options {options:{letter:"off"}} run function lunareclipse.watching:structures/place/start {structure:"letter"}
execute unless data storage lunareclipse.watching:config_options {options:{wooden_cross:"off"}} run function lunareclipse.watching:structures/place/start {structure:"wooden_cross"}

# Attempt to trigger the dreadful donation mechanic.
execute if data storage lunareclipse.watching:config_options {options:{dreadful_donation:"true"}} run function lunareclipse.watching:block_events/presets/dreadful_donation

# Attempt to trigger the fearful footsteps mechanic.
execute if data storage lunareclipse.watching:config_options {options:{fearful_footsteps:"true"}} as @r at @s run function lunareclipse.watching:fearful_footsteps/event

# Attempt to trigger the ghost doors mechanic.
execute if data storage lunareclipse.watching:config_options {options:{ghost_doors:"true"}} run function lunareclipse.watching:block_events/presets/ghost_doors

# Anything past this point can only happen after started events equals one.
execute unless score started_events watching.global_values matches 1 run return 0

# Attempt to trigger the ghost miner mechanic.
execute if data storage lunareclipse.watching:config_options {options:{ghost_miner:"true"}} as @r at @s run function lunareclipse.watching:ghost_miner/start

# Attempt to trigger the haunted herd mechanic
execute if data storage lunareclipse.watching:config_options {options:{haunted_herd:"true"}} run function lunareclipse.watching:sightings/haunted_herd/attempt

# Attempt to trigger the burning base mechanic.
execute if data storage lunareclipse.watching:config_options {options:{burning_base:"true"}} run function lunareclipse.watching:block_events/presets/burning_base
# Attempt to trigger the disappearing torches mechanic.
execute if data storage lunareclipse.watching:config_options {options:{disappearing_torches:"true"}} run function lunareclipse.watching:block_events/presets/disappearing_torches
# Attempt to trigger the leafless groves mechanic.
execute if data storage lunareclipse.watching:config_options {options:{leafless_grove:"true"}} run function lunareclipse.watching:block_events/presets/leafless_grove
# Attempt to trigger the chilled candles mechanic.
execute if data storage lunareclipse.watching:config_options {options:{chilled_candles:"true"}} run function lunareclipse.watching:block_events/presets/chilled_candles
# Attempt to trigger the crimson curse mechanic.
execute if data storage lunareclipse.watching:config_options {options:{crimson_curse:"true"}} run function lunareclipse.watching:block_events/presets/crimson_curse

# Attempt to trigger the twisted tapestries mechanic.
execute if data storage lunareclipse.watching:config_options {options:{twisted_tapestries:"true"}} as @r at @s run function lunareclipse.watching:twisted_tapestries/attempt

# Attempt to trigger the Rekindling Shrines mechanic.
execute if data storage lunareclipse.watching:config_options {options:{rekindling_shrine:"true"}} run function lunareclipse.watching:block_events/detection/remove/start {block_tag:"minecraft:fire"}