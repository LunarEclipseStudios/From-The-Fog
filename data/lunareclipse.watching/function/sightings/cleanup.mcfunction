# Reset the sighting type.
data remove storage lunareclipse.watching:global_values sightings.type
# Reset the slip behind mechanic.
data remove storage lunareclipse.watching:global_values sightings.slip_behind
# Reset the sighting sense variable, the value is never set to false so clearing it here is the easiest way to remove it.
data remove storage lunareclipse.watching:global_values sightings.sighting_sense
# Reset the haunted herd values.
data remove storage lunareclipse.watching:global_values sightings.haunted_herd
# Stop the breathing loop. This is very minor but might help performance.
function lunareclipse.watching:sightings/animations/breathing/stop
# Undo the head tilt.
function lunareclipse.watching:sightings/animations/tilting_head/stop
# Stop the walking animation.
function lunareclipse.watching:sightings/animations/walking/stop
# Remove any items he has.
function lunareclipse.watching:sightings/item/remove
# Reset the player spotted value.
scoreboard players reset player_spotted watching.global_values
# Reroll another sighting.
scoreboard players reset sighting_timer_rolled watching.global_values
# Clear the teleport jumpscare.
scoreboard players reset teleport_jumpscared watching.global_values
# Reset the window watcher scoreboard.
scoreboard players reset glass_spotted watching.global_values
# Clear the sinister signs roll scoreboard.
scoreboard players reset sinister_signs_roll watching.global_values
scoreboard players reset spotted_sign watching.global_values
# Cancel sneaky strike if it's scheduled.
schedule clear lunareclipse.watching:sightings/sneaky_strike/strike
# Reset the clamp reached scoreboard.
scoreboard players reset clamp_reached watching.animations
# Clear the suspenseful_spotted value.
scoreboard players reset suspenseful_spotted watching.global_values
# Remove the forceload.
forceload remove ~ ~
# Reset the raycast scoreboard.
scoreboard players reset ground_correction watching.global_values