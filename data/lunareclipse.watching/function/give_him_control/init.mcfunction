# Save the options the user had selected beforehand.
data modify storage lunareclipse.watching:global_values give_him_control.previous_config set from storage lunareclipse.watching:config_options options
# Set give him control in the saved config to false.
data modify storage lunareclipse.watching:global_values give_him_control.previous_config.give_him_control set value "false"

# Set all the sighting types to true.
data modify storage lunareclipse.watching:config_options options.creeping_sighting set value "true"
data modify storage lunareclipse.watching:config_options options.stalking_sighting set value "true"
data modify storage lunareclipse.watching:config_options options.lurking_sighting set value "true"
data modify storage lunareclipse.watching:config_options options.nightmare_sighting set value "true"
data modify storage lunareclipse.watching:config_options options.dwelling_sighting set value "true"
# Set the sighting window to always.
data modify storage lunareclipse.watching:config_options options.sighting_window set value "always"
# Set the jumpscare mechanic to true.
data modify storage lunareclipse.watching:config_options options.sudden_scare set value "true"
# Disable eerie entrance.
data modify storage lunareclipse.watching:config_options options.eerie_entrance set value "false"
# Set haunting delay to 0.
data modify storage lunareclipse.watching:config_options options.haunting_delay set value 0

# Create a list of all the options that Herobrine will change.
data modify storage lunareclipse.watching:global_values give_him_control.option_list set value [\
"burning_base",\
"burning_base_chance",\
"sighting_frequency",\
"dwelling_shadow",\
"no_sleep",\
"window_watcher",\
"sneaky_strike",\
"sneaky_strike_chance",\
"sighting_sense",\
"sighting_sense_chance",\
"disappearing_torches",\
"disappearing_torches_chance",\
"shrine_strike",\
"shrine_surprise",\
"rekindling_shrine",\
"dreadful_donation",\
"dreadful_donation_chance",\
"haunted_heirlooms",\
"leafless_grove",\
"leafless_grove_chance",\
"leafless_grove",\
"mossy_pyramid",\
"sand_pyramid",\
"letter",\
"wooden_cross",\
"chilled_candles",\
"chilled_candles_chance",\
"crimson_curse",\
"crimson_curse_chance",\
"soul_shift",\
"sinister_signs",\
"sinister_signs_chance",\
"biome_boards",\
"ghost_miner",\
"ghost_miner_chance",\
"fearful_footsteps",\
"haunted_herd",\
"haunted_herd_chance",\
"twisted_tapestries",\
"twisted_tapestries_chance",\
"ghost_doors",\
"ghost_doors_chance"\
]
# Define the values that Herobrine can change the options to. - DONT FORGET TO ADD THIS STUFF TO THE ARRAY.
# DONT FORGET TO ADD THIS STUFF TO THE ARRAY.
# DONT FORGET TO ADD THIS STUFF TO THE ARRAY.
# DONT FORGET TO ADD THIS STUFF TO THE ARRAY.
# DONT FORGET TO ADD THIS STUFF TO THE ARRAY.
# DONT FORGET TO ADD THIS STUFF TO THE ARRAY.
# DONT FORGET TO ADD THIS STUFF TO THE ARRAY.
# DONT FORGET TO ADD THIS STUFF TO THE ARRAY.
# DONT FORGET TO ADD THIS STUFF TO THE ARRAY.
# DONT FORGET TO ADD THIS STUFF TO THE ARRAY.
data modify storage lunareclipse.watching:global_values give_him_control.options set value {\
burning_base: ["true","false"],\
burning_base_chance: ["insane", "common", "default"],\
sighting_frequency: ["insane", "common", "default"],\
dwelling_shadow: ["true","false"],\
no_sleep: ["true","false"],\
window_watcher: ["true","false"],\
sneaky_strike: ["true","false"],\
sneaky_strike_chance: ["insane", "common", "default"],\
sighting_sense: ["true","false"],\
sighting_sense_chance: ["insane", "common", "default"],\
disappearing_torches: ["true","false"],\
disappearing_torches_chance: ["insane", "common", "default"],\
shrine_strike: ["true","false"],\
shrine_surprise: ["true","false"],\
rekindling_shrine: ["true","false"],\
dreadful_donation: ["true","false"],\
dreadful_donation_chance: ["insane", "common", "default"],\
haunted_heirlooms: ["true","false"],\
leafless_grove: ["true","false"],\
leafless_grove_chance: ["insane", "common", "default"],\
mossy_pyramid: ["common", "default"],\
sand_pyramid: ["common", "default"],\
letter: ["common", "default"],\
wooden_cross: ["common", "default"],\
chilled_candles: ["true","false"],\
chilled_candles_chance: ["insane", "common", "default"],\
crimson_curse: ["true","false"],\
crimson_curse_chance: ["insane", "common", "default"],\
soul_shift: ["true","false"],\
sinister_signs: ["true","false"],\
sinister_signs_chance: ["insane", "common", "default"],\
biome_boards: ["true","false"],\
ghost_miner: ["true","false"],\
ghost_miner_chance: ["insane", "common", "default"],\
fearful_footsteps: ["true","false"],\
haunted_herd: ["true","false"],\
haunted_herd_chance: ["insane", "common", "default"],\
twisted_tapestries: ["true","false"],\
twisted_tapestries_chance: ["insane", "common", "default"],\
ghost_doors: ["true","false"],\
ghost_doors_chance: ["insane", "common", "default"]\
}