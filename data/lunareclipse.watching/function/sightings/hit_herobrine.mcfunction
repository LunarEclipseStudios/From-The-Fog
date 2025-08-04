# Revoke the advancement from the player.
advancement revoke @s only lunareclipse.watching:technical/hit_herobrine

# Damage the player.
damage @s 2 minecraft:out_of_world

# Remove Herobrine.
function lunareclipse.watching:sightings/models/remove

# Make him temporaily more active.
function lunareclipse.watching:utils/activity_multiplier/set {value:4,delay:360,event_timer:300}

# Grant the player the advancement.
execute if entity @s[advancements={from_the_fog:root=true}] run advancement grant @s only from_the_fog:haunting/punch_herobrine