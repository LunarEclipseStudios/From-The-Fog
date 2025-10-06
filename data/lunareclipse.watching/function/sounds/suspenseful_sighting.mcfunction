# Make it dynamic.
execute if data storage lunareclipse.watching:config_options {options:{suspenseful_sighting:"dynamic"}} if data storage lunareclipse.watching:config_options {options:{herobrine_skin:{selected:"slenderman"}}} run return run playsound lunareclipse.watching:events.suspenseful_sighting.slenderman master @s ~ ~ ~
execute if data storage lunareclipse.watching:config_options {options:{suspenseful_sighting:"dynamic"}} if data storage lunareclipse.watching:config_options {options:{herobrine_skin:{selected:"werewolf"}}} run return run playsound lunareclipse.watching:events.suspenseful_sighting.werewolf master @s ~ ~ ~

# Play the sound.
playsound lunareclipse.watching:events.suspenseful_sighting.default master @s ~ ~ ~