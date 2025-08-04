# If the ghost hits a door then make him despawn.
execute if block ~ ~ ~ #minecraft:doors run function lunareclipse.watching:ghost_doors/remove_ghost
# If the ghost hits a bed then make him despawn.
execute if block ~ ~ ~ #minecraft:beds run function lunareclipse.watching:ghost_doors/remove_ghost