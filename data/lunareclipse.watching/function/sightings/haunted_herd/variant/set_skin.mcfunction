# List of variables used:
# "mob" - The type of mob being set.
# "variant" - The biome based variant of the mob.

# Replace the skin list with our custom one.
$data modify storage lunareclipse.watching:config_options options.herobrine_skin.list set value ["$(variant)_$(mob)"]