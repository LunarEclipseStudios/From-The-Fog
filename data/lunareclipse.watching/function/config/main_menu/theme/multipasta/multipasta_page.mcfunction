# Remove the mothman.
kill @e[type=#lunareclipse.watching:config,tag=watching.peeking_mothman]
# Remove the logo and contents of the page.
kill @e[type=#lunareclipse.watching:config,tag=watching.icon]
kill @e[type=#lunareclipse.watching:config,tag=watching.logo]
kill @e[type=#lunareclipse.watching:config,tag=watching.display_name]
kill @e[type=#lunareclipse.watching:config,tag=watching.description]
kill @e[type=#lunareclipse.watching:config,tag=watching.button,tag=!watching.next_arrow]

# Summon the multipasta logo.
execute positioned ~ ~3 ~ align y run summon item_display ~ ~ ~ {Tags:["watching.config","watching.text","watching.logo"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.25f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"lunareclipse.watching:ui/config/partners/multipasta/logo"}}}

# Summon the pretty text for the multipasta page. :D
summon text_display ~ ~1.35 ~ {Tags:["watching.config","watching.settings","watching.text"],alignment:"center",line_width:214,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.77f,0.01f],scale:[0.67f,0.67f,0.67f]},text:{"color":"white","translate":"config.text.multipasta.description"},background:16711680}

# Add the images.
execute positioned ~ ~0 ~ align y run summon item_display ~ ~ ~ {Tags:["watching.config","watching.text","watching.logo"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.25f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"lunareclipse.watching:ui/config/partners/multipasta/images"}}}

# Summon the entities.
execute positioned ^-2.5 ^ ^0.6 align y run summon item_display ~ ~ ~ {Tags:["watching.config","watching.partners"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0.35f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"lunareclipse.watching:ui/config/partners/multipasta/mothman_display"}}}
execute positioned ^2.5 ^ ^0.6 align y run summon item_display ~ ~ ~ {Tags:["watching.config","watching.partners","watching.button"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,-0.35f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_data":{type:"main_menu",id:"null",function:"lunareclipse.watching:config/main_menu/theme/multipasta/visit"},"minecraft:item_model":"lunareclipse.watching:ui/config/partners/multipasta/entity_63_display"}}}
execute positioned ^2.5 ^ ^0.6 align y run summon item_display ~ ~1.5 ~ {billboard:"vertical",Tags:["watching.config","watching.partners"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"lunareclipse.watching:ui/config/partners/multipasta/alert"}}}
execute positioned ^2.5 ^ ^0.6 run summon interaction ~ ~ ~ {response:1b,width:1f,height:1.5f,Tags:["watching.config","watching.main_menu","watching.button", "watching.partners", "watching.entity_63_display"]}

# Make the menu face the player.
execute as @e[type=#lunareclipse.watching:config,tag=watching.menu,distance=..15] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=watching.player_pivot,limit=1]
# Make the ui maintain 0 pitch.
execute as @e[type=#lunareclipse.watching:config,tag=watching.config,distance=..15] at @s rotated as @e[type=#lunareclipse.watching:config,tag=watching.menu,distance=..15] run tp @s ~ ~ ~ ~ 0
