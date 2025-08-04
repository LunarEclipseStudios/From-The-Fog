# List of variables used:
# "rotation" - The rotation of the sign.
# "type" - The type of sign.
# "message" - The message id, a number.

# Place the sign.
$execute if data storage lunareclipse.watching:config_options {options:{lurking_language:"local"}} run fill ~ ~ ~ ~ ~ ~ $(type)_sign[rotation=$(rotation)]{front_text:{messages:[{"translate":"sinister_signs.local.message.$(message).line1"},{"translate":"sinister_signs.local.message.$(message).line2"},{"translate":"sinister_signs.local.message.$(message).line3"},{"translate":"sinister_signs.local.message.$(message).line4"}]}} replace #lunareclipse.watching:replaceable
$execute if data storage lunareclipse.watching:config_options {options:{lurking_language:"swedish"}} run fill ~ ~ ~ ~ ~ ~ $(type)_sign[rotation=$(rotation)]{front_text:{messages:[{"translate":"sinister_signs.swedish.message.$(message).line1"},{"translate":"sinister_signs.swedish.message.$(message).line2"},{"translate":"sinister_signs.swedish.message.$(message).line3"},{"translate":"sinister_signs.swedish.message.$(message).line4"}]}} replace #lunareclipse.watching:replaceable

# If it is sign 4 then replace line 3 with the player's username.
$function lunareclipse.utils:value_check/start {base:4,dynamic:$(message),command:"data modify block ~ ~ ~ front_text.messages[2] set value {selector:@p}"}