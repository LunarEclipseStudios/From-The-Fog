# List of variables used:
# "object" - The object being merged with the storage object.
# "object_list" - A full list of variables inside the primary object.
# "target" - The storage variable's location.
# "path" - The path to the storage variable.

# Storage the object info inside of a storage variable.
$data modify storage lunareclipse:utils temp_values.object_to_storage."$(path)".object set value $(object)
$data modify storage lunareclipse:utils temp_values.object_to_storage."$(path)".object_list set value $(object_list)

# Input some info into the forloop.
$data modify storage lunareclipse:utils temp_values.forloop."temp_values.object_to_storage.'$(path)'.object_list".new_target set value "$(target)"
$data modify storage lunareclipse:utils temp_values.forloop."temp_values.object_to_storage.'$(path)'.object_list".new_path set value "$(path)"
# Merge the objects with the list.
$function lunareclipse.utils:forloop/start {target:"lunareclipse:utils",path:"temp_values.object_to_storage.'$(path)'.object_list",command:"lunareclipse.utils:object_to_storage/merge"}

# Remove any values used during the process.
$data remove storage lunareclipse:utils temp_values.object_to_storage."$(path)"

# /function lunareclipse.utils:object_to_storage/start {object:{cock:true,balls:false},object_list:[cock,balls],target:"lunareclipse:utils",path:"test.lol"}