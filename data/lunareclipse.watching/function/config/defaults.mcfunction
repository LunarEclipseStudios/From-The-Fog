# This file can be edited to change the defaults of the mod BEFORE THE WORLD IS LOADED.
# Please use the in-game config if the world is already loaded. - /function #from_the_fog:config

# Vanishing Delay. - Measured in seconds.
function lunareclipse.watching:config/set_default {option: "creeping_vanishing_delay", value: '"0.1"'}
function lunareclipse.watching:config/set_default {option: "dwelling_vanishing_delay", value: '"0.5"'}
function lunareclipse.watching:config/set_default {option: "stalking_vanishing_delay", value: '"0.5"'}
function lunareclipse.watching:config/set_default {option: "nightmare_vanishing_delay", value: '"0.1"'}
function lunareclipse.watching:config/set_default {option: "lurking_vanishing_delay", value: '"1"'}
function lunareclipse.watching:config/set_default {option: "ghost_miner_vanishing_delay", value: '"0.5"'}

# Sighting Types.
function lunareclipse.watching:config/set_default {option: "creeping_sighting", value: '"false"'}
function lunareclipse.watching:config/set_default {option: "dwelling_sighting", value: '"true"'}
function lunareclipse.watching:config/set_default {option: "stalking_sighting", value: '"true"'}
function lunareclipse.watching:config/set_default {option: "lurking_sighting", value: '"true"'}
function lunareclipse.watching:config/set_default {option: "nightmare_sighting", value: '"true"'}

# Sighting Delay.
function lunareclipse.watching:config/set_default {option: "sighting_frequency", value: '"default"'}
# Sighting Periods.
function lunareclipse.watching:config/set_default {option: "sighting_window", value: '"always"'}
# Sighting Frequency Multiplier.
function lunareclipse.watching:config/set_default {option: "activity_multiplier", value: '1'}

# Entity Skin.
execute unless data storage lunareclipse.watching:config_options options.herobrine_skin.list run data modify storage lunareclipse.watching:config_options options.herobrine_skin.list set value ["default"]

# Burning Base.
function lunareclipse.watching:config/set_default {option: "burning_base", value: '"false"'}
function lunareclipse.watching:config/set_default {option: "burning_base_chance", value: '"default"'}

# Disappearing Torches.
function lunareclipse.watching:config/set_default {option: "disappearing_torches", value: '"true"'}
function lunareclipse.watching:config/set_default {option: "disappearing_torches_chance", value: '"default"'}

# Ghost Doors.
function lunareclipse.watching:config/set_default {option: "ghost_doors", value: '"true"'}
function lunareclipse.watching:config/set_default {option: "ghost_doors_chance", value: '"default"'}

# Leafless Groves.
function lunareclipse.watching:config/set_default {option: "leafless_grove", value: '"true"'}
function lunareclipse.watching:config/set_default {option: "leafless_grove_chance", value: '"default"'}

# Chilled Candles.
function lunareclipse.watching:config/set_default {option: "chilled_candles", value: '"true"'}
function lunareclipse.watching:config/set_default {option: "chilled_candles_chance", value: '"default"'}

# Sudden Scare
function lunareclipse.watching:config/set_default {option: "sudden_scare", value: '"true"'}

# Malicious Malfunction.
function lunareclipse.watching:config/set_default {option: "malicious_malfunction", value: '"false"'}

# Rekindling Shrine.
function lunareclipse.watching:config/set_default {option: "rekindling_shrine", value: '"true"'}

# Shrine Strike.
function lunareclipse.watching:config/set_default {option: "shrine_strike", value: '"false"'}

# Shrine Surprise.
function lunareclipse.watching:config/set_default {option: "shrine_surprise", value: '"false"'}

# Haunting Delay.
function lunareclipse.watching:config/set_default {option: "haunting_delay", value: 3}

# Dreaful Donation.
function lunareclipse.watching:config/set_default {option: "dreadful_donation", value: '"true"'}
function lunareclipse.watching:config/set_default {option: "dreadful_donation_chance", value: '"default"'}
function lunareclipse.watching:config/set_default {option: "haunted_heirlooms", value: '"false"'}
function lunareclipse.watching:config/set_default {option: "lurking_language", value: '"local"'}

# Check if sighting noise is set to true and if it is then set it to cave noise.
execute if data storage lunareclipse.watching:config_options {options:{sighting_noise:"true"}} run data modify storage lunareclipse.watching:config_options options.sighting_noise set value "cave"
# Sighting Noise.
function lunareclipse.watching:config/set_default {option: "sighting_noise", value: '"cave"'}

# Emissive Layers.
function lunareclipse.watching:config/set_default {option: "emissive_layers", value: '"true"'}

# Suspenseful Sighting.
# Make the setting change to default if it's set to true and same for false/off.
execute if data storage lunareclipse.watching:config_options {options:{suspenseful_sighting:"true"}} run data modify storage lunareclipse.watching:config_options options.suspenseful_sighting set value "default"
execute if data storage lunareclipse.watching:config_options {options:{suspenseful_sighting:"false"}} run data modify storage lunareclipse.watching:config_options options.suspenseful_sighting set value "off"
function lunareclipse.watching:config/set_default {option: "suspenseful_sighting", value: '"off"'}

# Shrouded Specter.
function lunareclipse.watching:config/set_default {option: "shrouded_specter", value: '"off"'}

# Nametag.
function lunareclipse.watching:config/set_default {option: "nametag", value: '"off"'}

# No Sleep.
function lunareclipse.watching:config/set_default {option: "no_sleep", value: '"true"'}

# Structures.
function lunareclipse.watching:config/set_default {option: "mossy_pyramid", value: '"default"'}
function lunareclipse.watching:config/set_default {option: "sand_pyramid", value: '"default"'}
function lunareclipse.watching:config/set_default {option: "letter", value: '"off"'}
function lunareclipse.watching:config/set_default {option: "wooden_cross", value: '"off"'}

# Window Watcher.
function lunareclipse.watching:config/set_default {option: "window_watcher", value: '"true"'}

# Dwelling Shadow.
function lunareclipse.watching:config/set_default {option: "dwelling_shadow", value: '"true"'}

# Sneaky Strike.
function lunareclipse.watching:config/set_default {option: "sneaky_strike", value: '"true"'}
function lunareclipse.watching:config/set_default {option: "sneaky_strike_chance", value: '"default"'}

# Crimson Curse.
function lunareclipse.watching:config/set_default {option: "crimson_curse", value: '"true"'}
function lunareclipse.watching:config/set_default {option: "crimson_curse_chance", value: '"default"'}
function lunareclipse.watching:config/set_default {option: "soul_shift", value: '"false"'}

# Sinister Signs.
function lunareclipse.watching:config/set_default {option: "sinister_signs", value: '"true"'}
function lunareclipse.watching:config/set_default {option: "sinister_signs_chance", value: '"default"'}
function lunareclipse.watching:config/set_default {option: "biome_boards", value: '"true"'}

# Sighting Sense.
function lunareclipse.watching:config/set_default {option: "sighting_sense", value: '"true"'}
function lunareclipse.watching:config/set_default {option: "sighting_sense_chance", value: '"default"'}

# Ghost Miner.
function lunareclipse.watching:config/set_default {option: "ghost_miner", value: '"true"'}
function lunareclipse.watching:config/set_default {option: "ghost_miner_chance", value: '"default"'}

# Advancements.
function lunareclipse.watching:config/set_default {option: "advancements", value: '"false"'}

# Eerie Entrance.
function lunareclipse.watching:config/set_default {option: "eerie_entrance", value: '"false"'}

# Fearful Footsteps.
function lunareclipse.watching:config/set_default {option: "fearful_footsteps", value: '"true"'}
function lunareclipse.watching:config/set_default {option: "fearful_footsteps_chance", value: '"default"'}

# Haunted Herd.
function lunareclipse.watching:config/set_default {option: "haunted_herd", value: '"true"'}
function lunareclipse.watching:config/set_default {option: "haunted_herd_chance", value: '"default"'}

# Caution Caption
function lunareclipse.watching:config/set_default {option: "caution_caption", value: '"true"'}

# Give Him Control
function lunareclipse.watching:config/set_default {option: "give_him_control", value: '"false"'}

# Twisted Tapestries
function lunareclipse.watching:config/set_default {option: "twisted_tapestries", value: '"false"'}
function lunareclipse.watching:config/set_default {option: "twisted_tapestries_chance", value: '"default"'}

# Vanilla Sightings
function lunareclipse.watching:config/set_default {option: "vanilla_sightings", value: '"false"'}

# Flickering Flashlight - Lights Out
function lunareclipse.watching:config/set_default {option: "flickering_flashlight", value: '"false"'}

# SSS
function lunareclipse.watching:config/set_default {option: "hoebrine_returns", value: '"false"'}
function lunareclipse.watching:config/set_default {option: "from_the_pants", value: '"false"'}