# List of variables used:
# "timer" - The amount of time until the attempt.

# Schedule the function.
$schedule function lunareclipse.watching:sightings/sneaky_strike/strike $(timer)s

# Send a message.
$function lunareclipse.watching:debug/message {message: "Sneaky Strike Scheduled", status: "1", info: {"Time Until Attempt": "$(timer) seconds"}, info_list: ["Time Until Attempt"]}
