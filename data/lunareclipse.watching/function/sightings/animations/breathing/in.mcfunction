# Continue the animation loop.
schedule function lunareclipse.watching:sightings/animations/breathing/out 32t

# Rotate the arms. - Multiply the actual interpolation by 6, this is done because we are constantly data modifying it on the "Apply the updated body rotation to the entity." line. - Yes ik it's a rigged way to do it.
# Likely to break.
function lunareclipse.watching:sightings/animations/update {part:"left_arm",axis:"z",rotation:0,interpolation:180}
function lunareclipse.watching:sightings/animations/update {part:"right_arm",axis:"z",rotation:0,interpolation:180}
function lunareclipse.watching:sightings/animations/update {part:"right_arm_item",axis:"z",rotation:0,interpolation:180}