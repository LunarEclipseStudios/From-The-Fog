# Make the arrow hit the ground.
data modify entity @s Motion set value [0d,0d,0d]

# Remove Herobrine.
function lunareclipse.watching:sightings/models/remove

# Make him temporaily more active.
function lunareclipse.watching:utils/activity_multiplier/set {value:4,delay:360,event_timer:300}