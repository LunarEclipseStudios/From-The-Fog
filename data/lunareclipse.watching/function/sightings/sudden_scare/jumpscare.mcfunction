# Make the player face Herobrine.
tp @s ~ ~ ~ facing entity @e[type=#lunareclipse.watching:herobrine,tag=watching.herobrine,distance=..2,limit=1]

# Make him punch if give him control is enabled.
execute if data storage lunareclipse.watching:config_options {options:{give_him_control:"true"}} run schedule function lunareclipse.watching:sightings/punch 2t replace

# Play the jumpscare sound.
execute positioned as @e[type=#lunareclipse.watching:herobrine,tag=watching.herobrine,distance=..2,limit=1] run playsound lunareclipse.watching:events.sudden_scare.jumpscare ambient @s ~ ~ ~

# Make Herobrine disappear.
schedule function lunareclipse.watching:sightings/models/remove 10t replace

# Make him temporaily more active.
function lunareclipse.watching:utils/activity_multiplier/set {value:2,delay:360,event_timer:300}