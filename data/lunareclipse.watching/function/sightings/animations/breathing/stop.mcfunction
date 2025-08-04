# Clear the breathing schedules.
schedule clear lunareclipse.watching:sightings/animations/breathing/out
schedule clear lunareclipse.watching:sightings/animations/breathing/in

# Make him breathe back in.
function lunareclipse.watching:sightings/animations/update {part:"left_arm",axis:"z",rotation:0,interpolation:30}
function lunareclipse.watching:sightings/animations/update {part:"right_arm",axis:"z",rotation:0,interpolation:30}