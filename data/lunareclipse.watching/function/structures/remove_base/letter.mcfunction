# List of variables used:
# "structure" - The structure that is being saved.

# Remove the structure from the world.
execute positioned as @e[type=marker,tag=watching.center,sort=nearest,limit=1] run fill ~2 ~ ~2 ~-2 ~5 ~-2 air

# Save the structure.
$function lunareclipse.watching:structures/save_location {structure:"$(structure)"}

# Remove the forceload from the area.
execute positioned as @e[type=marker,tag=watching.center,sort=nearest,limit=1] run forceload remove ~ ~

# Kill the markers.
kill @e[type=marker,tag=watching.structure,sort=nearest,limit=2]