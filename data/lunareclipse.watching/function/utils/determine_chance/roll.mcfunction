# List of variables used:
# "mechanic" - The ID of the mechanic, this will be used to determine what scoreboard and option is being checked.
# "max_chance" - The maximum number that can be rolled.

# Roll the chance.
$execute store result score $(mechanic)_roll watching.global_values run random value 1..$(max_chance)