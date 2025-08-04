# List of variables used:
# "vanishing_delay"

# Remove the base entity based on the vanishing delay defined.
$schedule function lunareclipse.watching:sightings/models/remove $(vanishing_delay)s

# Remove the temporary storage.
data remove storage lunareclipse.watching:global_values temp.vanish