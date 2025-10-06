# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.

# Store the command, target and the path somewhere that it can be used later.
$data modify storage lunareclipse:utils temp_values.forloop_object."$(path)".target set value "$(target)"
$data modify storage lunareclipse:utils temp_values.forloop_object."$(path)".path set value "$(path)"
$data modify storage lunareclipse:utils temp_values.forloop_object."$(path)".command set value "$(command)"

# Start the forloop.
$function lunareclipse.utils:forloop/start {target:"$(target)",path:"$(path)",command:"lunareclipse.utils:forloop_object/loop"}

# Remove any values used during the forloop.
$data remove storage lunareclipse:utils temp_values.forloop_object."$(path)"