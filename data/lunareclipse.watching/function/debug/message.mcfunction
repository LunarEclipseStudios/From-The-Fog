# List of variables used:
# "message" - The message displayed in chat.
# "status" - The status of the event.
# "info" - The information that comes with the debug event.
# "info_list" - The information that comes with the debug event.

# Example command:
# /function lunareclipse.watching:debug/message {message: "A sighting has been scheduled.", status: "true/false/failed/succeeded", info: {"Sighting Type": "Creeping", "Time Until Sighting":"30s"}, info_list: ["Sighting Type", "Time Until Sighting"]}

# Store the variables so we can use them later.
$data modify storage lunareclipse.watching:global_values debug.temp.info set value $(info)
$data modify storage lunareclipse.watching:global_values debug.temp.info_list set value $(info_list)

# Send the message.
$tellraw @a[tag=watching.debug_mode] ["",{"text":"\uAA0$(status) ","font":"lunareclipse.watching:ui"},{"text":"$(message)","bold":true}]

# Loop through the info variables to create the hover tip string.
function lunareclipse.utils:forloop/start {target:"lunareclipse.watching:global_values",path:"debug.temp.info_list",command:"lunareclipse.watching:debug/message/add_info_value"}

# Send the debug message.
function lunareclipse.watching:debug/message/send_message with storage lunareclipse.watching:global_values debug.temp

# Clear the temp variable.
data remove storage lunareclipse.watching:global_values debug.temp