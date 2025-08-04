# List of variables used:
# "message" - The randomly rolled message that will display.

# Play the sound based on the language.
$execute if data storage lunareclipse.watching:config_options {options:{lurking_language:"local"}} run playsound lunareclipse.watching:event.caution_caption.local.message.$(message) master @a[distance=..15]
$execute if data storage lunareclipse.watching:config_options {options:{lurking_language:"swedish"}} run playsound lunareclipse.watching:event.caution_caption.swedish.message.$(message) master @a[distance=..15]