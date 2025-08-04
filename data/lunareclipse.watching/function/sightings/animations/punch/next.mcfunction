# Schedule next keyframe (snap-back to idle).
schedule function lunareclipse.watching:sightings/animations/punch/end 3t

# Thrust the arm forward quickly like a real punch.
function lunareclipse.watching:sightings/animations/update {part:"right_arm",axis:"x",rotation:-110,interpolation:5}
function lunareclipse.watching:sightings/animations/update {part:"right_arm",axis:"y",rotation:0,interpolation:5}
function lunareclipse.watching:sightings/animations/update {part:"right_arm",axis:"z",rotation:25,interpolation:5}

function lunareclipse.watching:sightings/animations/update {part:"left_arm",axis:"x",rotation:5,interpolation:4}

function lunareclipse.watching:sightings/animations/update {part:"body",axis:"y",rotation:5,interpolation:4}
