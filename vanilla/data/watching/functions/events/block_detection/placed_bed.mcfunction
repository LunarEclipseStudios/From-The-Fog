#revokeAdvancements
advancement revoke @s from watching:block_detection/beds/bed_root

#createRaycastMarker
execute anchored eyes run summon marker ^ ^ ^ {Tags:["bedTrace"],NoGravity:1b}

#findBed
execute anchored eyes run function watching:events/block_detection/technical/placed_bed/raycast