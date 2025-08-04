# Reset the multipler back to normal.
data modify storage lunareclipse.watching:config_options options.activity_multiplier set value 1
# Send the debug message.
function lunareclipse.watching:debug/message {message: "Activity Multiplier Removed", status: "1", info: {}, info_list: []}