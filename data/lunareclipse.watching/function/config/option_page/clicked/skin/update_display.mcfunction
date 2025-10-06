# List of variables used:
# "skin" - The skin being added/removed.

# Remove the previous display.
kill @e[type=#lunareclipse.watching:herobrine,tag=watching.preview_skin]

# Reset the models assembled parts.
$data modify storage lunareclipse.watching:global_values skin_library.skin.$(skin).assembled set value [{id:"minecraft:interaction",width:0.6f,height:1.8f,Rotation:[12F,0F],Tags:["watching.config","watching.preview_skin","watching.preview_skin_hitbox"]}]
# Manaually insert some data into the forloop.
$data modify storage lunareclipse:utils temp_values.forloop."skin_library.skin.$(skin).parts".skin set value "$(skin)"
# Build the selected skin's model.
$function lunareclipse.utils:forloop/start {target:"lunareclipse.watching:global_values",path:"skin_library.skin.$(skin).parts",command:"lunareclipse.watching:config/option_page/clicked/skin/build_model/add_part"}

# Summon Herobrine.
$execute at @e[type=minecraft:marker,tag=watching.pivot] run function lunareclipse.watching:config/option_page/clicked/skin/create_model with storage lunareclipse.watching:global_values skin_library.skin.$(skin)

# Make the herobrine face the position.
execute if data storage lunareclipse.watching:config_options {config:{preview_spinning:"true"}} as @e[type=minecraft:armor_stand,tag=watching.preview_skin_pivot] at @s rotated as @e[type=minecraft:marker,tag=watching.pivot] run tp @s ~ ~ ~ ~-75 ~
execute if data storage lunareclipse.watching:config_options {config:{preview_spinning:"false"}} as @e[type=minecraft:armor_stand,tag=watching.preview_skin_pivot] at @s rotated as @e[type=minecraft:marker,tag=watching.pivot] run tp @s ~ ~ ~ ~ ~

# Give Herobrine his nametag is it's enabled.
$execute if data storage lunareclipse.watching:config_options {options:{nametag:"dynamic"}} as @e[type=minecraft:interaction,tag=watching.preview_skin_hitbox] at @s run data merge entity @s {CustomNameVisible:1b,CustomName:{"translate":"entity.nametag.$(skin).value"}}
$execute if data storage lunareclipse.watching:config_options {options:{nametag:"cryptic"}} as @e[type=minecraft:interaction,tag=watching.preview_skin_hitbox] at @s run data merge entity @s {CustomNameVisible:1b,CustomName:{"translate":"entity.nametag.$(skin).value","obfuscated":true}}