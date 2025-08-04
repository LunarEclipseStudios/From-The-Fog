# Check if the sighting types are valid.
execute unless data storage lunareclipse.watching:global_values {sightings:{type:"lurking"}} unless data storage lunareclipse.watching:global_values {sightings:{type:"stalking"}} run return fail
# Don't execute if the player is too close, it loses effect up close.
execute if entity @a[distance=..20] run return fail

# Randomly decide whether or not it will happen.
execute unless predicate lunareclipse.watching:chances/1 run return fail

# Tilt the head.
schedule function lunareclipse.watching:sightings/animations/tilting_head/start 1s
# Override the vanishing timer.
data modify storage lunareclipse.watching:global_values temp.vanish.vanishing_delay set value "3"