# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.
# "value" - The value from the array position we're in.

# Store the information that we don't have so we can use it later.
$data modify storage lunareclipse:utils temp_values.forloop_object."$(path)".index set value $(index)
$data modify storage lunareclipse:utils temp_values.forloop_object."$(path)".value set value $(value)

# Store the contents of the object inside of our temp storage.
$data modify storage lunareclipse:utils temp_values.forloop_object."$(path)" merge from storage $(target) $(path)[$(index)]

# Run the command.
$function lunareclipse.utils:forloop_object/run_command with storage lunareclipse:utils temp_values.forloop_object."$(path)"