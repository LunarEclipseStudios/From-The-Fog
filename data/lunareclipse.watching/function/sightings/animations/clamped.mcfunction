# For reference Bret, this function runs once a full rotation clamp is complete.

# Auto disable the clamp.
data modify storage lunareclipse.watching:global_values sightings.clamp_rotation set value "true"

# Set the value close to zero.
scoreboard players set body_rotation watching.animations 3

# If the sighting type is a haunted herd, and the clamp has been reached then replace the fake mob with a real one.
execute if data storage lunareclipse.watching:global_values {sightings:{type:"haunted_herd"}} run schedule function lunareclipse.watching:sightings/haunted_herd/replace/start 1s