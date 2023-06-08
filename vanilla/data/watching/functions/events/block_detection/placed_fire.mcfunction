#revokeAdvancements
advancement revoke @s only watching:block_detection/fire

#createRaycastMarker
execute anchored eyes run summon marker ^ ^ ^ {Tags:["fireTrace"],NoGravity:1b}

#findFire
execute anchored eyes run function watching:events/block_detection/technical/placed_fire/raycast