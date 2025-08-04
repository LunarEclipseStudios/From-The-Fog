# Trigger the walking animation.
function lunareclipse.watching:sightings/animations/walking/start

# Make him stop facing the player.
data modify storage lunareclipse.watching:global_values sightings.face_player set value "false"

# Make him move.
data modify storage lunareclipse.watching:global_values sightings.slip_behind set value "right"

# Remove him.
schedule function lunareclipse.watching:sightings/models/remove 14t