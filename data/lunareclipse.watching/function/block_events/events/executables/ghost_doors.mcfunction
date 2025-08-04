# Force the chunk to check the block.
forceload add ~ ~
# Check if the block that is trying to be pivoted on is a door.
execute unless block ~ ~ ~ #minecraft:doors run return run forceload remove ~ ~

# Forceload the chunks.
forceload add ~25 ~25 ~-25 ~-25

# Decide whether or not the ghost door mechanic will occur.
function lunareclipse.watching:utils/determine_chance/default {mechanic:"ghost_doors"}
# scoreboard players set ghost_doors_roll watching.global_values 1

# If the randomizer's value is 1 then summon a door ghost.
execute unless score ghost_doors_roll watching.global_values matches 1 run return run forceload remove ~25 ~25 ~-25 ~-25

# Remove existing ghosts. - Pretty much just for debug.
function lunareclipse.watching:ghost_doors/remove_ghost

# Remove Herobrine.
function lunareclipse.watching:sightings/models/remove

# Schedule the door ghost to despawn.
schedule function lunareclipse.watching:ghost_doors/remove_ghost 30s

# Summon the villager.
execute rotated ~ 0 run summon villager ^ ^ ^-2 {Silent:1b,Invulnerable:1b,Team:"watching.door_ghost",Tags:["watching.door_ghost"],attributes:[{id:"minecraft:scale",base:0.1}],VillagerData:{profession:"minecraft:nitwit"},active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:19999980,show_particles:0b,show_icon:0b,ambient:0b}]}

# Remove the forceloaded chunks.
forceload remove ~25 ~25 ~-25 ~-25