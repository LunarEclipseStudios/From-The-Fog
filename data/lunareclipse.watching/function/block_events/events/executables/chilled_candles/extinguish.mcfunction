# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.
# "value" - The value from the array position we're in.

# Extinguish any candle in a radius of 50 blocks.
$fill ~25 ~25 ~25 ~-25 ~-25 ~-25 $(value)[candles=1,lit=false] replace $(value)[candles=1]
$fill ~25 ~25 ~25 ~-25 ~-25 ~-25 $(value)[candles=2,lit=false] replace $(value)[candles=2]
$fill ~25 ~25 ~25 ~-25 ~-25 ~-25 $(value)[candles=3,lit=false] replace $(value)[candles=3]
$fill ~25 ~25 ~25 ~-25 ~-25 ~-25 $(value)[candles=4,lit=false] replace $(value)[candles=4]