# Make him breathe back in.
# function lunareclipse.watching:sightings/animations/update {part:"right_arm",axis:"z",rotation:0,interpolation:30}
# Rotate the arm out slightly.
function lunareclipse.watching:sightings/animations/update {part:"right_arm",axis:"x",rotation:-15,interpolation:0}
# Log that he's holding something, this is primarily used to stop his right arm from breathing.
scoreboard players set holding_item watching.animations 1