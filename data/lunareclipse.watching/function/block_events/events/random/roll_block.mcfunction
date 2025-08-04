# List of variables used:
# "length" - The length of the block list array.

# Roll a random block.
$function lunareclipse.utils:random_range/start {starting_number: 0, ending_number: $(length), command:"lunareclipse.watching:block_events/events/random/select_block"}