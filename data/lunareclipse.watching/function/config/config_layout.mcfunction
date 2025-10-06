# Clear all the options from the config.
data remove storage lunareclipse.watching:config_options config.pages
data remove storage lunareclipse.watching:config_options config.settings
data remove storage lunareclipse.watching:config_options config.integrations

# Check if our integrations are installed.
execute if function lunareclipse.darkness:check run data modify storage lunareclipse.watching:config_options config.integrations.lights_out set value "true"

# Add options to the config.
data modify storage lunareclipse.watching:config_options config.pages.1 append value "vanishing_delay"
data modify storage lunareclipse.watching:config_options config.pages.1 append value "sightings"
data modify storage lunareclipse.watching:config_options config.pages.1 append value "skin_library"
data modify storage lunareclipse.watching:config_options config.pages.1 append value "burning_base"
data modify storage lunareclipse.watching:config_options config.pages.1 append value "disappearing_torches"
data modify storage lunareclipse.watching:config_options config.pages.1 append value "malevolent_shrine"
data modify storage lunareclipse.watching:config_options config.pages.1 append value "dreadful_donation"
data modify storage lunareclipse.watching:config_options config.pages.1 append value "leafless_grove"
data modify storage lunareclipse.watching:config_options config.pages.1 append value "structures"
data modify storage lunareclipse.watching:config_options config.pages.1 append value "chilled_candles"
data modify storage lunareclipse.watching:config_options config.pages.1 append value "crimson_curse"
data modify storage lunareclipse.watching:config_options config.pages.1 append value "sinister_signs"
data modify storage lunareclipse.watching:config_options config.pages.1 append value "ghost_miner"
data modify storage lunareclipse.watching:config_options config.pages.1 append value "advancements"
data modify storage lunareclipse.watching:config_options config.pages.1 append value "fearful_footsteps"
data modify storage lunareclipse.watching:config_options config.pages.1 append value "haunted_herd"
data modify storage lunareclipse.watching:config_options config.pages.2 append value "twisted_tapestries"
data modify storage lunareclipse.watching:config_options config.pages.2 append value "ghost_doors"
data modify storage lunareclipse.watching:config_options config.pages.3 append value "give_him_control"
# Lights Out
execute if data storage lunareclipse.watching:config_options {config:{integrations:{lights_out:"true"}}} run data modify storage lunareclipse.watching:config_options config.pages.2 append value "lights_out"

# Define the amount of pages in one option.
data modify storage lunareclipse.watching:config_options config.settings.list.vanishing_delay.page_list set value [1]
data modify storage lunareclipse.watching:config_options config.settings.list.sightings.page_list set value [1, 2, 3, 4, 5, 6]
data modify storage lunareclipse.watching:config_options config.settings.list.skin_library.page_list set value [1, 2, 3, 4, 5, 6, 7]
data modify storage lunareclipse.watching:config_options config.settings.list.burning_base.page_list set value [1]
data modify storage lunareclipse.watching:config_options config.settings.list.disappearing_torches.page_list set value [1]
data modify storage lunareclipse.watching:config_options config.settings.list.malevolent_shrine.page_list set value [1, 2]
data modify storage lunareclipse.watching:config_options config.settings.list.dreadful_donation.page_list set value [1]
data modify storage lunareclipse.watching:config_options config.settings.list.leafless_grove.page_list set value [1]
data modify storage lunareclipse.watching:config_options config.settings.list.structures.page_list set value [1]
data modify storage lunareclipse.watching:config_options config.settings.list.chilled_candles.page_list set value [1]
data modify storage lunareclipse.watching:config_options config.settings.list.crimson_curse.page_list set value [1]
data modify storage lunareclipse.watching:config_options config.settings.list.sinister_signs.page_list set value [1]
data modify storage lunareclipse.watching:config_options config.settings.list.ghost_miner.page_list set value [1]
data modify storage lunareclipse.watching:config_options config.settings.list.advancements.page_list set value [1]
data modify storage lunareclipse.watching:config_options config.settings.list.fearful_footsteps.page_list set value [1]
data modify storage lunareclipse.watching:config_options config.settings.list.haunted_herd.page_list set value [1]
data modify storage lunareclipse.watching:config_options config.settings.list.twisted_tapestries.page_list set value [1]
data modify storage lunareclipse.watching:config_options config.settings.list.ghost_doors.page_list set value [1]
data modify storage lunareclipse.watching:config_options config.settings.list.super_secret_settings.page_list set value [1]
# Lights Out
data modify storage lunareclipse.watching:config_options config.settings.list.lights_out.page_list set value [1]

# SSS
function lunareclipse.watching:config/add_library_option {list: "super_secret_settings", page: 1, option: "hoebrine_returns", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "super_secret_settings", page: 1, option: "from_the_pants", type: "boolean", options: [], option_offset: "0", experimental: "false"}

# Define the details of the settings pages.
function lunareclipse.watching:config/add_library_option {list: "vanishing_delay", page: 1, option: "creeping_vanishing_delay", type: "option", options: ["0.1", "0.5", "1", "2"], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "vanishing_delay", page: 1, option: "dwelling_vanishing_delay", type: "option", options: ["0.1", "0.5", "1", "2"], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "vanishing_delay", page: 1, option: "stalking_vanishing_delay", type: "option", options: ["0.1", "0.5", "1", "2"], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "vanishing_delay", page: 1, option: "lurking_vanishing_delay", type: "option", options: ["0.1", "0.5", "1", "2"], option_offset: "0", experimental: "false"}

function lunareclipse.watching:config/add_library_option {list: "sightings", page: 1, option: "creeping_sighting", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 1, option: "nightmare_sighting", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 1, option: "stalking_sighting", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 1, option: "lurking_sighting", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 2, option: "dwelling_sighting", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 2, option: "dwelling_shadow", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 2, option: "sighting_frequency", type: "option", options: ["common", "default", "rare", "scarce"], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 2, option: "sighting_window", type: "option", options: ["always", "day", "night", "rain"], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 3, option: "sudden_scare", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 3, option: "malicious_malfunction", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 3, option: "suspenseful_sighting", type: "option", options: ["off", "default", "dynamic"], option_offset: "0.5", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 3, option: "shrouded_specter", type: "option", options: ["off", "poof", "smoke", "portal"], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 4, option: "no_sleep", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 4, option: "window_watcher", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 4, option: "sneaky_strike", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 4, option: "sneaky_strike_chance", type: "option", options: ["common", "default", "rare", "scarce"], option_offset: "0", experimental: "false"}
# function lunareclipse.watching:config/add_library_option {list: "sightings", page: 5, option: "emissive_layers", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 5, option: "sighting_sense", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 5, option: "sighting_sense_chance", type: "option", options: ["common", "default", "rare", "scarce"], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 5, option: "nametag", type: "option", options: ["off", "dynamic", "cryptic"], option_offset: "0.5", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 5, option: "sighting_noise", type: "option", options: ["off", "cave", "ghast"], option_offset: "0.5", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sightings", page: 6, option: "vanilla_sightings", type: "boolean", options: [], option_offset: "0", experimental: "true"}

function lunareclipse.watching:config/add_library_option {list: "skin_library", page: 1, option: "herobrine_skin", type: "skin", options: ["default", "default_shaved", "classic", "classic_shaved", "lunar_eclipse_version", "millerbrine", "millerbrine_classic", "him", "glitch", "lunar_eclipse", "apparition", "zombie", "nullified", "fallen_kingdom", "sculk_infested", "crimson_infested", "smile", "shattered","birthday", "jack_black"], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "skin_library", page: 2, option: "herobrine_skin", type: "skin", options: ["tennis_herobrine", "tuxedo_herobrine", "athlete_herobrine", "scottish_herobrine", "prisoner_herobrine", "cyclist_herobrine", "boxer_herobrine", "developer_herobrine", "lonely", "roseate", "trench_diver", "frozen_wanderer"], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "skin_library", page: 3, option: "herobrine_skin", type: "skin", options: ["entity_303", "entity_303_classic", "null", "black_eyed", "black_eyed_classic", "faceless", "distorted", "distorted_classic", "alex", "alex_classic", "lick", "lick_classic", "white_eyes", "hat_man"], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "skin_library", page: 4, option: "herobrine_skin", type: "skin", options: ["nowhere", "werewolf", "the_man_from_the_fog", "slenderman", "cursed_oak", "freddy_fazbear"], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "skin_library", page: 5, option: "herobrine_skin", type: "skin", options: ["the_librarian", "comicalbonzo", "tokimi", "notvixios", "pixelnaut", "derpblock", "vivilly", "mackheaththeknife"], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "skin_library", page: 6, option: "herobrine_skin", type: "skin", options: ["farlander", "the_headless", "lumbering_jack", "grimreaper", "white_pumpkin", "mr_boots", "ghost_costume","scarecrow"], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "skin_library", page: 7, option: "herobrine_skin", type: "skin", options: ["notch", "notch_classic", "notch_v2", "notch_v2_classic"], option_offset: "0.375", experimental: "false"}

function lunareclipse.watching:config/add_library_option {list: "burning_base", page: 1, option: "burning_base", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "burning_base", page: 1, option: "burning_base_chance", type: "option", options: ["common", "default", "rare", "scarce"], option_offset: "0", experimental: "false"}

function lunareclipse.watching:config/add_library_option {list: "disappearing_torches", page: 1, option: "disappearing_torches", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "disappearing_torches", page: 1, option: "disappearing_torches_chance", type: "option", options: ["common", "default", "rare", "scarce"], option_offset: "0", experimental: "false"}

function lunareclipse.watching:config/add_library_option {list: "malevolent_shrine", page: 1, option: "haunting_delay", type: "increment", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "malevolent_shrine", page: 1, option: "rekindling_shrine", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "malevolent_shrine", page: 1, option: "shrine_surprise", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "malevolent_shrine", page: 1, option: "shrine_strike", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "malevolent_shrine", page: 2, option: "eerie_entrance", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "malevolent_shrine", page: 2, option: "caution_caption", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "malevolent_shrine", page: 2, option: "lurking_language", type: "option", options: ["local", "swedish"], option_offset: "1", experimental: "false"}

function lunareclipse.watching:config/add_library_option {list: "dreadful_donation", page: 1, option: "dreadful_donation", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "dreadful_donation", page: 1, option: "dreadful_donation_chance", type: "option", options: ["common", "default", "rare", "scarce"], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "dreadful_donation", page: 1, option: "haunted_heirlooms", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "dreadful_donation", page: 1, option: "lurking_language", type: "option", options: ["local", "swedish"], option_offset: "1", experimental: "false"}

function lunareclipse.watching:config/add_library_option {list: "leafless_grove", page: 1, option: "leafless_grove", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "leafless_grove", page: 1, option: "leafless_grove_chance", type: "option", options: ["common", "default", "rare", "scarce"], option_offset: "0", experimental: "false"}

function lunareclipse.watching:config/add_library_option {list: "structures", page: 1, option: "mossy_pyramid", type: "option", options: ["off", "common", "default", "rare"], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "structures", page: 1, option: "sand_pyramid", type: "option", options: ["off", "common", "default", "rare"], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "structures", page: 1, option: "letter", type: "option", options: ["off", "common", "default", "rare"], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "structures", page: 1, option: "wooden_cross", type: "option", options: ["off", "common", "default", "rare"], option_offset: "0", experimental: "false"}

function lunareclipse.watching:config/add_library_option {list: "chilled_candles", page: 1, option: "chilled_candles", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "chilled_candles", page: 1, option: "chilled_candles_chance", type: "option", options: ["common", "default", "rare", "scarce"], option_offset: "0", experimental: "false"}

function lunareclipse.watching:config/add_library_option {list: "crimson_curse", page: 1, option: "crimson_curse", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "crimson_curse", page: 1, option: "crimson_curse_chance", type: "option", options: ["common", "default", "rare", "scarce"], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "crimson_curse", page: 1, option: "soul_shift", type: "boolean", options: [], option_offset: "0", experimental: "false"}

function lunareclipse.watching:config/add_library_option {list: "sinister_signs", page: 1, option: "sinister_signs", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sinister_signs", page: 1, option: "sinister_signs_chance", type: "option", options: ["common", "default", "rare", "scarce"], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sinister_signs", page: 1, option: "lurking_language", type: "option", options: ["local", "swedish"], option_offset: "1", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "sinister_signs", page: 1, option: "biome_boards", type: "boolean", options: [], option_offset: "0", experimental: "false"}

function lunareclipse.watching:config/add_library_option {list: "ghost_miner", page: 1, option: "ghost_miner", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "ghost_miner", page: 1, option: "ghost_miner_chance", type: "option", options: ["common", "default", "rare", "scarce"], option_offset: "0", experimental: "false"}

function lunareclipse.watching:config/add_library_option {list: "fearful_footsteps", page: 1, option: "fearful_footsteps", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "fearful_footsteps", page: 1, option: "fearful_footsteps_chance", type: "option", options: ["common", "default", "rare", "scarce"], option_offset: "0", experimental: "false"}

function lunareclipse.watching:config/add_library_option {list: "advancements", page: 1, option: "advancements", type: "boolean", options: [], option_offset: "0", experimental: "false"}

function lunareclipse.watching:config/add_library_option {list: "haunted_herd", page: 1, option: "haunted_herd", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "haunted_herd", page: 1, option: "haunted_herd_chance", type: "option", options: ["common", "default", "rare", "scarce"], option_offset: "0", experimental: "false"}

function lunareclipse.watching:config/add_library_option {list: "twisted_tapestries", page: 1, option: "twisted_tapestries", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "twisted_tapestries", page: 1, option: "twisted_tapestries_chance", type: "option", options: ["common", "default", "rare", "scarce"], option_offset: "0", experimental: "false"}

function lunareclipse.watching:config/add_library_option {list: "ghost_doors", page: 1, option: "ghost_doors", type: "boolean", options: [], option_offset: "0", experimental: "false"}
function lunareclipse.watching:config/add_library_option {list: "ghost_doors", page: 1, option: "ghost_doors_chance", type: "option", options: ["common", "default", "rare", "scarce"], option_offset: "0", experimental: "false"}

# Lights Out config options.
function lunareclipse.watching:config/add_library_option {list: "lights_out", page: 1, option: "flickering_flashlight", type: "boolean", options: [], option_offset: "0", experimental: "false"}