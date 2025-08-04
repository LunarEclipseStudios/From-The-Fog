# List of variables used:
# "value" - The value of the multiplier.
# "delay" - The delay before it's reset.
# "event_timer" - The amount of time until the 5 minute tick runs.

# Set the value.
$data modify storage lunareclipse.watching:config_options options.activity_multiplier set value $(value)
# Schedule the reset.
$schedule function lunareclipse.watching:utils/activity_multiplier/reset $(delay)s
# Schedule the event timer.
$schedule function lunareclipse.watching:main/timed_ticks/5_minutes $(event_timer)s
# Send the debug message.
$function lunareclipse.watching:debug/message {message: "Activity Multiplied", status: "1", info: {"Amount": $(value), "Duration": "$(delay) seconds", "Time Until Event Attempt": "$(event_timer) seconds"}, info_list: ["Amount", "Duration", "Time Until Event Attempt"]}