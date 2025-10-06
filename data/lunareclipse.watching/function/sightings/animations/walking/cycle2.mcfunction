# Move the legs.
function lunareclipse.watching:sightings/animations/update {part:"left_leg",axis:"x",rotation:-50,interpolation:7}
function lunareclipse.watching:sightings/animations/update {part:"right_leg",axis:"x",rotation:50,interpolation:7}
function lunareclipse.watching:sightings/animations/update {part:"left_leg2",axis:"x",rotation:-50,interpolation:7}
function lunareclipse.watching:sightings/animations/update {part:"right_leg2",axis:"x",rotation:50,interpolation:7}
function lunareclipse.watching:sightings/animations/update {part:"left_leg3",axis:"x",rotation:-50,interpolation:7}
function lunareclipse.watching:sightings/animations/update {part:"right_leg3",axis:"x",rotation:50,interpolation:7}

# Move the arms.
function lunareclipse.watching:sightings/animations/update {part:"right_arm",axis:"x",rotation:-50,interpolation:7}
function lunareclipse.watching:sightings/animations/update {part:"left_arm",axis:"x",rotation:50,interpolation:7}

# Schedule next keyframe.
schedule function lunareclipse.watching:sightings/animations/walking/cycle1 7t