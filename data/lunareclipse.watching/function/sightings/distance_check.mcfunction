# List of variables used: 
# "max_distance" - The max distance that the player can be from Herobrine being he disappears.

# Check if Herobrine is outside the despawn distance.
$execute unless entity @a[distance=..$(max_distance)] run function lunareclipse.watching:sightings/models/remove