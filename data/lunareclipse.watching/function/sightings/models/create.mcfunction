# List of variables used:
# "selected" - The skin being applied to Herobrine.

# Store the light level of the emissive parts, this will be used to disable emissive layers later.
execute if data storage lunareclipse.watching:config_options {options:{emissive_layers:"true"}} run data modify storage lunareclipse.watching:global_values skin_library.emissive set value ",brightness:{sky:15,block:15}"
execute if data storage lunareclipse.watching:config_options {options:{emissive_layers:"false"}} run data modify storage lunareclipse.watching:global_values skin_library.emissive set value ""

# Reset the models assembled parts.
$data modify storage lunareclipse.watching:global_values skin_library.skin.$(selected).assembled set value [\
{id:"minecraft:interaction",width:0.6f,height:1.8f,Rotation:[12F,0F],Tags:["watching.herobrine","watching.hitbox"]},\
{id:"minecraft:husk",Tags:["watching.herobrine","watching.no_sleep"],Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,attributes:[{id:"minecraft:scale",base:0.01}],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}]}\
]
# Manaually insert some data into the forloop.
$data modify storage lunareclipse:utils temp_values.forloop."skin_library.skin.$(selected).parts".skin set value "$(selected)"
# Build the selected skin's model.
$execute unless data storage lunareclipse.watching:config_options {options:{vanilla_sightings:"true"}} run function lunareclipse.utils:forloop/start {target:"lunareclipse.watching:global_values",path:"skin_library.skin.$(selected).parts",command:"lunareclipse.watching:sightings/skin_library/build_model/add_part"}

# Summon Herobrine.
$function lunareclipse.watching:sightings/models/create_model with storage lunareclipse.watching:global_values skin_library.skin.$(selected)
# Summon the mannequin if defined.
execute if data storage lunareclipse.watching:config_options {options:{vanilla_sightings:"true"}} run function lunareclipse.watching:sightings/models/mannequin/create

# Store the rotation of the ai in a scoreboard this helps reduce @e entity checks.
execute as @e[type=armor_stand,tag=watching.ai] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[type=armor_stand,tag=watching.ai] store result score head_rotation_yaw watching.animations run data get entity @s Rotation[0]

# Remove the no sleep mob if it's disabled.
execute if data storage lunareclipse.watching:config_options {options:{no_sleep:"false"}} as @e[type=minecraft:husk,tag=watching.herobrine] at @s run tp ~ -512 ~
execute if data storage lunareclipse.watching:config_options {options:{no_sleep:"false"}} as @e[type=minecraft:husk,tag=watching.herobrine] at @s run kill @s

# Ensure that Herobrine is rotated towards the player.
execute as @e[type=item_display,tag=watching.model] store result entity @s Rotation[0] float 1 run scoreboard players get head_rotation_yaw watching.animations

# Give Herobrine his nametag is it's enabled.
$execute if data storage lunareclipse.watching:config_options {options:{nametag:"dynamic"}} as @e[type=minecraft:interaction,tag=watching.hitbox] at @s run data merge entity @s {CustomNameVisible:1b,CustomName:{"translate":"entity.nametag.$(selected).value"}}
$execute if data storage lunareclipse.watching:config_options {options:{nametag:"cryptic"}} as @e[type=minecraft:interaction,tag=watching.hitbox] at @s run data merge entity @s {CustomNameVisible:1b,CustomName:{"translate":"entity.nametag.$(selected).value","obfuscated":true}}
# If the Herobrine is a mannequin then override the nametag.
execute if data storage lunareclipse.watching:config_options {options:{nametag:"dynamic"}} if data storage lunareclipse.watching:config_options {options:{vanilla_sightings:"true"}} as @e[type=minecraft:interaction,tag=watching.hitbox] at @s run data merge entity @s {CustomNameVisible:1b,CustomName:{"translate":"entity.nametag.default.value"}}

# Remove the spread entity.
kill @e[type=interaction,tag=watching.spread_entity]

# Start the breathing animation.
function lunareclipse.watching:sightings/animations/breathing/start