# Schedule breathing animation restart.
schedule function lunareclipse.watching:sightings/animations/breathing/start 5t

# Snap the arm back to neutral.
function lunareclipse.watching:sightings/animations/update {part:"right_arm",axis:"x",rotation:0,interpolation:3}
function lunareclipse.watching:sightings/animations/update {part:"right_arm",axis:"y",rotation:0,interpolation:3}
function lunareclipse.watching:sightings/animations/update {part:"right_arm",axis:"z",rotation:0,interpolation:3}
 
 function lunareclipse.watching:sightings/animations/update {part:"left_arm",axis:"x",rotation:0,interpolation:4}

function lunareclipse.watching:sightings/animations/update {part:"body",axis:"y",rotation:0,interpolation:4}