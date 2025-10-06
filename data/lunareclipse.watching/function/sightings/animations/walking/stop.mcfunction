# Clear the schedules.
schedule clear lunareclipse.watching:sightings/animations/walking/cycle1
schedule clear lunareclipse.watching:sightings/animations/walking/cycle2

# Make him reset to normal/
function lunareclipse.watching:sightings/animations/update {part:"left_leg",axis:"x",rotation:0,interpolation:2}
function lunareclipse.watching:sightings/animations/update {part:"right_leg",axis:"x",rotation:0,interpolation:2}
function lunareclipse.watching:sightings/animations/update {part:"left_leg2",axis:"x",rotation:0,interpolation:2}
function lunareclipse.watching:sightings/animations/update {part:"right_leg2",axis:"x",rotation:0,interpolation:2}
function lunareclipse.watching:sightings/animations/update {part:"left_leg3",axis:"x",rotation:0,interpolation:2}
function lunareclipse.watching:sightings/animations/update {part:"right_leg3",axis:"x",rotation:0,interpolation:2}
function lunareclipse.watching:sightings/animations/update {part:"left_arm",axis:"x",rotation:0,interpolation:2}
function lunareclipse.watching:sightings/animations/update {part:"right_arm",axis:"x",rotation:0,interpolation:2}

# Schedule breathing animation restart.
function lunareclipse.watching:sightings/animations/breathing/start