############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.
############### THIS IS NOT WHERE YOU EDIT THE CONFIG, YOU SHOULD READ THE WEBSITE BEFORE MESSING WITH FILES.

#loudSoundFix
tag @s add defautlingConfig
schedule function watching:config/pages/technical/remove_defaulting_tag 1s

### FROM THE FOG DEFAULTS
# (Reload the game to confirm changes)


## Swaps the jumpscare mechanic for the og crash mechanic
# Allows "true" or "false" (false is the default)
function watching:config/crash/false

## Changes the delay for how long it takes for Herobrine to start major haunting (in-game days)
# Allows "off", "1", "2", or "3" (3 is the default)
function watching:config/start_delay/reset

## Changes whether or not Herobrine can open your doors
# Allows "true" or "false" (true is the default)
function watching:config/ghost_door/true

## Changes whether or not Herobrine will mine next to you in strip mines
# Allows "true" or "false" (true is the default)
function watching:config/ghost_mine/true

## Changes whether or not Herobrine will stand behind you waiting for you to turn around
# Allows "true" or "false" (true is the default)
function watching:config/creeping/true

## Changes whether or not Herobrine will stalk you from a distance
# Allows "true" or "false" (true is the default)
function watching:config/stalking/true

## Changes whether or not Herobrine will try to break your torches once you leave the area (one check per in-game day)
# Allows "true" or "false" (true is the default)
function watching:config/disappearing_torches/true

## Changes whether or not Herobrine will try to burn down your house once you leave the area (one check per in-game day)
# Allows "true" or "false" (false is the default)
function watching:config/burning_base/false

## Changes whether or not a noise is played when the player spots Herobrine
# Allows "true" or "false" (false is the default)
function watching:config/spot_noise/true

## Changes whether or not Herobrine will have glowing eyes. Useful for players who want to make him more vanilla, or that use dynamic lighting.
# Allows "true" or "false" (true is the default)
function watching:config/glowing_eyes/true


function watching:config/herobrine_skin/1_default

function watching:config/randomize_skins/false

function watching:config/sighting_chance/2_uncommon

function watching:config/jumpscare/true

function watching:config/creeping_vanishing_delay/none
function watching:config/stalking_vanishing_delay/none

function watching:config/no_sleep/true
function watching:config/dreadful_donation/true

function watching:config/crimson_curse/true

function watching:config/og_shrine/false

function watching:config/nightmare/true
function watching:config/window_watcher/true
function watching:config/chilled_candles/true

function watching:config/sinister_signs/true
function watching:config/lurking_language/english
function watching:config/griddy/false
function watching:config/randomize_custom_skins/false
function watching:config/sighting_sense/true

function watching:config/nametag/off
function watching:config/rekindling_shrine/true

function watching:config/advancements/false

function watching:config/fearful_footsteps/true
function watching:config/shrine_suprise/false
function watching:config/autoconfig/disable

#AV
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 2.0 1.0
tellraw @s ["",{"text":"[","color":"dark_green"},{"translate":"chat.default_config.execute.statement","color": "green"},{"text":"]","color":"dark_green"}]