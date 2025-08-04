# Stop the breathing animation.
function lunareclipse.watching:sightings/animations/breathing/stop

# Schedule next keyframe (thrust).
schedule function lunareclipse.watching:sightings/animations/punch/next 2t

# Pull the right arm back slightly to prepare for the punch.
function lunareclipse.watching:sightings/animations/update {part:"right_arm",axis:"x",rotation:-110,interpolation:4}
function lunareclipse.watching:sightings/animations/update {part:"right_arm",axis:"z",rotation:-35,interpolation:4}
function lunareclipse.watching:sightings/animations/update {part:"right_arm",axis:"y",rotation:-5,interpolation:4}

function lunareclipse.watching:sightings/animations/update {part:"left_arm",axis:"x",rotation:-5,interpolation:4}

function lunareclipse.watching:sightings/animations/update {part:"body",axis:"y",rotation:-5,interpolation:4}

# Make the body rotate to be the same rotation as the head.
execute as @e[type=item_display,tag=watching.model] at @s store result entity @s Rotation[0] float 1 run scoreboard players get head_rotation_yaw watching.animations