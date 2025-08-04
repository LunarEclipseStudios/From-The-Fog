# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.
# "value" - The value from the array position we're in.
# "new_target" - The new target location that the info will be stored.
# "new_path" - The new path location that the info will be stored.

# Store the information inside of the defined variable.
$data modify storage $(new_target) $(new_path).$(value) set from storage lunareclipse:utils temp_values.object_to_storage."$(new_path)".object.$(value)