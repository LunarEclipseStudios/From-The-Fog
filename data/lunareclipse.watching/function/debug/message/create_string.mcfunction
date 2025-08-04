# List of variables used:
# "key" - The key of the variable.
# "value" - The value of the variable.

# Send the subdetails messages.
$tellraw @a[tag=watching.debug_mode] ["",{"text":"  $(key) ","color":"green"},{"text":"$(value)"}]