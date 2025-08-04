# List of variables used:
# "structure" - The structure that is being saved.

# Create the object that the data will be stored within.
$data modify storage lunareclipse.watching:global_values structures.$(structure).positions prepend value {}
# Add the xyz data to the structure object.
$execute store result storage lunareclipse.watching:global_values structures.$(structure).positions[0].x int 1 run data get entity @s Pos[0]
$execute store result storage lunareclipse.watching:global_values structures.$(structure).positions[0].y int 1 run data get entity @s Pos[1]
$execute store result storage lunareclipse.watching:global_values structures.$(structure).positions[0].z int 1 run data get entity @s Pos[2]

$execute store result storage lunareclipse.watching:global_values structures.$(structure).positions[0].x_center int 1 run data get entity @e[type=marker,tag=watching.center,sort=nearest,limit=1] Pos[0]
$execute store result storage lunareclipse.watching:global_values structures.$(structure).positions[0].y_center int 1 run data get entity @e[type=marker,tag=watching.center,sort=nearest,limit=1] Pos[1]
$execute store result storage lunareclipse.watching:global_values structures.$(structure).positions[0].z_center int 1 run data get entity @e[type=marker,tag=watching.center,sort=nearest,limit=1] Pos[2]

# Send a message.
$function lunareclipse.watching:debug/message {message: "Saving Structure Position", status: "1", info: {"Structure": "$(structure)"}, info_list: ["Structure"]}