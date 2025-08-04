# Play a sound.
execute if entity @s[tag=watching.debug_mode] run playsound minecraft:block.piston.contract master @s ~ ~ ~ 1 1 1
execute unless entity @s[tag=watching.debug_mode] run playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 1 1

# Send a message.
execute if entity @s[tag=watching.debug_mode] run function lunareclipse.watching:debug/message {message: "Debug Mode Toggled", status: "1", info: {"State": "False"}, info_list: ["State"]}

# Give/Remove the debug tag from player.
execute if entity @s[tag=watching.debug_mode] run return run tag @s remove watching.debug_mode
execute unless entity @s[tag=watching.debug_mode] run tag @s add watching.debug_mode

# Send a message.
function lunareclipse.watching:debug/message {message: "Debug Mode Toggled", status: "1", info: {"State": "True"}, info_list: ["State"]}