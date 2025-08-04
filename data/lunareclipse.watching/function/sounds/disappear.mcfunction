# Play the sound.
execute if data storage lunareclipse.watching:config_options {options:{sighting_noise:"cave"}} run playsound minecraft:ambient.cave master @a ~ ~8 ~ 0.7 0.1
execute if data storage lunareclipse.watching:config_options {options:{sighting_noise:"ghast"}} run playsound minecraft:entity.ghast.hurt master @a ~ ~8 ~ 0.7 1